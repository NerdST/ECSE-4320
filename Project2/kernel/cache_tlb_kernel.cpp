#include <chrono>
#include <cstring>
#include <iostream>
#include <thread>
#include <vector>
#include <atomic>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <sys/mman.h>
#include <unistd.h>

/*
 * Synthetic memory access kernel to study cache-miss and TLB-miss impact.
 * Parameters:
 *   --size= (working set size, accepts optional K/M/G suffix; default 32M)
 *   --stride= (stride in bytes; default 64)
 *   --threads= (number of worker threads; default 1)
 *   --iters= (number of full passes over array per thread; default 4)
 *   --pattern=seq|random (sequential or randomized index order; default seq)
 *   --huge (attempt allocate with huge pages; fallback if unavailable)
 * Output (single line, CSV):
 *   size_bytes,stride_bytes,threads,iters,pattern,total_bytes_touched,ns,GB_s,huge
 */

static size_t parse_size(std::string s)
{
  if (s.empty())
    return 0;
  char suffix = s.back();
  size_t mult = 1;
  if (suffix == 'K' || suffix == 'k')
  {
    mult = 1024;
    s.pop_back();
  }
  else if (suffix == 'M' || suffix == 'm')
  {
    mult = 1024ull * 1024ull;
    s.pop_back();
  }
  else if (suffix == 'G' || suffix == 'g')
  {
    mult = 1024ull * 1024ull * 1024ull;
    s.pop_back();
  }
  return std::stoull(s) * mult;
}

int main(int argc, char **argv)
{
  size_t size_bytes = 32ull * 1024ull * 1024ull; // 32MB default
  size_t stride_bytes = 64;                      // typical cache line
  int threads = 1;
  int iters = 4;
  std::string pattern = "seq";
  bool use_huge = false;
  for (int i = 1; i < argc; i++)
  {
    std::string arg = argv[i];
    if (arg.rfind("--size=", 0) == 0)
      size_bytes = parse_size(arg.substr(7));
    else if (arg.rfind("--stride=", 0) == 0)
      stride_bytes = parse_size(arg.substr(9));
    else if (arg.rfind("--threads=", 0) == 0)
      threads = std::stoi(arg.substr(10));
    else if (arg.rfind("--iters=", 0) == 0)
      iters = std::stoi(arg.substr(8));
    else if (arg.rfind("--pattern=", 0) == 0)
      pattern = arg.substr(10);
    else if (arg == "--huge")
      use_huge = true;
    else
    {
      std::cerr << "Unknown arg: " << arg << "\n";
      return 1;
    }
  }
  if (stride_bytes == 0)
    stride_bytes = 1;
  if (size_bytes < stride_bytes)
    size_bytes = stride_bytes;

  size_t elements = size_bytes / sizeof(uint64_t);
  if (elements == 0)
    elements = 1;

  // Huge page allocation attempt if requested
  uint64_t *buffer_hp = nullptr;
  bool huge_ok = false;
  size_t huge_page_sz = 2ull * 1024ull * 1024ull; // common default (will query if possible)
#ifdef MAP_HUGETLB
  long hps = sysconf(_SC_PAGESIZE); // base page
  (void)hps;
  // Align allocation size to huge page size if we assume 2MB
  if (use_huge)
  {
    size_t alloc_size = ((size_bytes + huge_page_sz - 1) / huge_page_sz) * huge_page_sz;
    void *ptr = mmap(nullptr, alloc_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_HUGETLB, -1, 0);
    if (ptr != MAP_FAILED)
    {
      buffer_hp = static_cast<uint64_t *>(ptr);
      huge_ok = true;
      // If alloc_size > size_bytes we still only iterate elements belonging to original logical size
    }
    else
    {
      std::cerr << "[warn] Huge page mmap failed; falling back to standard pages.\n";
    }
  }
#endif
  std::vector<uint64_t> buffer_std;
  if (!huge_ok)
  {
    buffer_std.assign(elements, 1);
    buffer_hp = buffer_std.data();
    huge_ok = false;
  }
  else
  {
    for (size_t i = 0; i < elements; ++i)
      buffer_hp[i] = 1;
  }

  // Optional random index vector for random pattern
  std::vector<size_t> indices;
  if (pattern == "random")
  {
    size_t step = stride_bytes / sizeof(uint64_t);
    if (step == 0)
      step = 1;
    for (size_t i = 0; i < elements; i += step)
      indices.push_back(i);
    // Fisher-Yates shuffle
    for (size_t i = indices.size(); i > 1; --i)
    {
      size_t j = rand() % i;
      std::swap(indices[i - 1], indices[j]);
    }
  }

  std::atomic<uint64_t> sink{0};
  auto worker = [&](int tid)
  {
    size_t stride_elems = stride_bytes / sizeof(uint64_t);
    if (stride_elems == 0)
      stride_elems = 1;
    size_t chunk = elements / threads;
    size_t start = tid * chunk;
    size_t end = (tid == threads - 1) ? elements : start + chunk;
    uint64_t local = 0;
    for (int it = 0; it < iters; ++it)
    {
      if (pattern == "random")
      {
        for (size_t idx : indices)
        {
          if (idx >= start && idx < end)
            local += buffer_hp[idx];
        }
      }
      else
      { // sequential
        for (size_t i = start; i < end; i += stride_elems)
        {
          local += buffer_hp[i];
        }
      }
    }
    sink.fetch_add(local, std::memory_order_relaxed);
  };

  // Warmup single pass
  worker(0);
  sink.store(0);
  std::vector<std::thread> ts;
  auto t0 = std::chrono::high_resolution_clock::now();
  for (int t = 0; t < threads; t++)
    ts.emplace_back(worker, t);
  for (auto &th : ts)
    th.join();
  auto t1 = std::chrono::high_resolution_clock::now();
  double ns = std::chrono::duration<double, std::nano>(t1 - t0).count();
  // Total bytes touched approximated: each thread touches its chunk / stride
  size_t stride_elems = stride_bytes / sizeof(uint64_t);
  if (stride_elems == 0)
    stride_elems = 1;
  double accesses_per_thread = ((elements / threads) + stride_elems - 1) / stride_elems * (double)iters;
  double total_accesses = accesses_per_thread * threads;
  double total_bytes = total_accesses * stride_bytes; // approximate unique+revisited
  double gbs = (total_bytes / ns);                    // bytes per ns == GB/s (since 1e9 ns per s & 1e9 bytes per GB)
  std::cout << size_bytes << "," << stride_bytes << "," << threads << "," << iters << "," << pattern
            << "," << (uint64_t)total_bytes << "," << ns << "," << gbs << "," << (huge_ok ? 1 : 0) << std::endl;
  // Prevent dead-code elimination
  if (sink.load() == 42)
    std::cerr << "Impossible value" << std::endl;
  if (huge_ok)
  {
#ifdef MAP_HUGETLB
    size_t alloc_size = ((size_bytes + huge_page_sz - 1) / huge_page_sz) * huge_page_sz;
    munmap(buffer_hp, alloc_size);
#endif
  }
  return 0;
}
