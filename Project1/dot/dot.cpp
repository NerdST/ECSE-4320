
#include <iostream>
#include <chrono>
#include <random>
#include <string>
#include <cstdlib>
#include <fstream>
#include <vector>
#include <array>
#ifdef _WIN32
#include <malloc.h>
#endif
// Helper struct for configuration
struct SaxpyConfig
{
  bool use_float32 = true;
  bool aligned = true;
  size_t stride = 1;
  size_t n = 10000000;
  bool sweep = false;
  std::string csv_out = "results.csv";
};

// Helper functions for aligned allocation/free
template <typename T>
T *alloc_mem(size_t bytes, bool aligned)
{
#ifdef _WIN32
  if (aligned)
    return static_cast<T *>(_aligned_malloc(bytes, 32));
  T *ptr = static_cast<T *>(_aligned_malloc(bytes + sizeof(T), 32));
  return ptr ? ptr + 1 : nullptr;
#else
  if (aligned)
    return static_cast<T *>(std::aligned_alloc(32, bytes));
  return static_cast<T *>(std::aligned_alloc(32, bytes)) + 1;
#endif
}

template <typename T>
void free_mem(T *ptr, bool aligned)
{
#ifdef _WIN32
  if (aligned)
    _aligned_free(ptr);
  else
    _aligned_free(ptr - 1);
#else
  if (aligned)
    free(ptr);
  else
    free(ptr - 1);
#endif
}

// Scalar SAXPY
// Scalar Dot Product (Reduction)
template <typename T>
T dot_product_scalar(const T *x, const T *y, size_t n, size_t stride = 1)
{
  T sum = 0;
  for (size_t i = 0; i < n; i += stride)
    sum += x[i] * y[i];
  return sum;
}

// Run a single experiment and return GFLOP/s
template <typename T>
std::array<T, 3> run_experiment(size_t n, size_t stride, bool aligned, bool verbose = true)
{
  size_t bytes = (n + 8) * sizeof(T);
  T *x = alloc_mem<T>(bytes, aligned);
  T *y = alloc_mem<T>(bytes, aligned);
  std::mt19937 rng(42);
  std::uniform_real_distribution<T> dist(0.0, 1.0);
  for (size_t i = 0; i < n; i++)
  {
    x[i] = dist(rng);
    y[i] = dist(rng);
  }
  dot_product_scalar<T>(x, y, n, stride); // Warmup
  auto start = std::chrono::high_resolution_clock::now();
  T result = dot_product_scalar<T>(x, y, n, stride);
  auto end = std::chrono::high_resolution_clock::now();
  std::chrono::duration<double> elapsed = end - start;
  double seconds = elapsed.count();
  double flops = 2.0 * (n / stride); // 1 multiply + 1 add per element
  double gflops = (flops / seconds) / 1e9;
  if (verbose)
  {
    std::cout << "N=" << n << " | stride=" << stride << " | aligned=" << aligned
              << " | time=" << seconds << " s | GFLOP/s=" << gflops << " | result=" << result << std::endl;
  }
  free_mem(x, aligned);
  free_mem(y, aligned);
  return {static_cast<T>(gflops), static_cast<T>(seconds), result};
}
// Unified experiment runner and CSV writer
template <typename T>
void run_and_write(const SaxpyConfig &cfg, const std::vector<size_t> &sizes, int repeats, std::ofstream &csv)
{
  for (size_t val : sizes)
  {
    for (int r = 0; r < repeats; r++)
    {
      auto result = run_experiment<T>(val, cfg.stride, cfg.aligned, false);
      csv << (std::is_same<T, float>::value ? "float32" : "float64") << ","
          << val << "," << cfg.stride << "," << cfg.aligned << ","
          << result[1] << "," << result[0] << "," << result[2] << "\n";
      csv.flush(); // Ensure data is written to disk immediately
    }
  }
}

int main(int argc, char **argv)
{
  SaxpyConfig cfg;
  for (int i = 1; i < argc; i++)
  {
    std::string arg = argv[i];
    if (arg == "--float64")
      cfg.use_float32 = false;
    else if (arg == "--unaligned")
      cfg.aligned = false;
    else if (arg.rfind("--stride=", 0) == 0)
      cfg.stride = std::stoul(arg.substr(9));
    else if (arg == "--sweep")
      cfg.sweep = true;
    else if (arg.rfind("--csv=", 0) == 0)
      cfg.csv_out = arg.substr(6);
    else
      cfg.n = std::stoul(arg);
  }
  std::vector<size_t> sweep_sizes = {
      1,
      2,
      4,
      8,
      16,
      32,
      64,
      128,
      256,
      512,
      1024,
      2048,
      4096,
      8192,
      16384,
      32768,
      65536,
      131072,
      262144,
      524288,
      1048576,
      2097152,
      4194304,
      8388608,
      16777216,
      33554432,
      67108864,
      // 134217728,
      // 268435456,
      // 536870912,
      // 1073741824,
      // 2147483648,
      // 4294967296,
      // 8589934592,
  };
  std::ofstream csv(cfg.csv_out);
  csv << "datatype,n,stride,aligned,time_s,gflops,result\n";
  int repeats = 3;
  if (cfg.sweep)
  {
    if (cfg.use_float32)
      run_and_write<float>(cfg, sweep_sizes, repeats, csv);
    else
      run_and_write<double>(cfg, sweep_sizes, repeats, csv);
  }
  else
  {
    if (cfg.use_float32)
    {
      auto result = run_experiment<float>(cfg.n, cfg.stride, cfg.aligned, true);
      csv << "float32," << cfg.n << "," << cfg.stride << "," << cfg.aligned << ","
          << result[1] << "," << result[0] << "," << result[2] << "\n";
      csv.flush();
    }
    else
    {
      auto result = run_experiment<double>(cfg.n, cfg.stride, cfg.aligned, true);
      csv << "float64," << cfg.n << "," << cfg.stride << "," << cfg.aligned << ","
          << result[1] << "," << result[0] << "," << result[2] << "\n";
      csv.flush();
    }
  }
  csv.close();
  std::cout << "Results written to " << cfg.csv_out << std::endl;
}
