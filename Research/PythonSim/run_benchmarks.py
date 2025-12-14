#!/usr/bin/env python3
"""
Comprehensive benchmarks for tiered concurrent data structures.
Evaluates throughput, latency (p95/p99), and migration overhead across workloads.
"""
import json
import sys
from cxl_sim.simulator import Simulator

def run_benchmark_suite():
    """Run complete benchmark suite and export results."""
    
    print("=" * 80)
    print("TIERED CONCURRENT DATA STRUCTURES - BENCHMARK SUITE")
    print("=" * 80)
    
    all_results = {}
    
    # Benchmark 1: Baseline (DRAM-only single-tier)
    print("\n[1/5] Baseline (DRAM-only, single-tier)...")
    sim = Simulator()
    sim.start()
    sim.workload_tiered_baseline(n_ops=500, payload_size=2048)
    sim.stop()
    baseline_results = sim.get_summary()
    all_results["baseline_dram_only"] = baseline_results
    print("  Baseline GET p99:", baseline_results.get("get_baseline", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Baseline PUT p99:", baseline_results.get("put_baseline", {}).get("p99_ns", 0) / 1e6, "ms")
    
    # Benchmark 2: Tiered - Sequential Workload
    print("\n[2/5] Tiered: Sequential workload (0.7 read ratio)...")
    sim = Simulator()
    sim.start()
    sim.workload_sequential(n_ops=500, payload_size=2048, read_ratio=0.7)
    sim.stop()
    sequential_results = sim.get_summary()
    all_results["tiered_sequential"] = sequential_results
    print("  Sequential GET p99:", sequential_results.get("get", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Sequential PUT p99:", sequential_results.get("put", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Tier utilization:", sequential_results.get("tier_utilization_bytes", {}))
    print("  Migration overhead:", sequential_results.get("migration_overhead_ns", 0) / 1e6, "ms")
    
    # Benchmark 3: Tiered - Random Workload
    print("\n[3/5] Tiered: Random workload (key_space=100)...")
    sim = Simulator()
    sim.start()
    sim.workload_random(n_ops=500, payload_size=2048, key_space=100, read_ratio=0.5)
    sim.stop()
    random_results = sim.get_summary()
    all_results["tiered_random"] = random_results
    print("  Random GET p99:", random_results.get("get", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Random PUT p99:", random_results.get("put", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Migration overhead:", random_results.get("migration_overhead_ns", 0) / 1e6, "ms")
    
    # Benchmark 4: Tiered - Hotspot Workload
    print("\n[4/5] Tiered: Hotspot workload (80/20 rule)...")
    sim = Simulator()
    sim.start()
    sim.workload_hotspot(n_ops=500, payload_size=2048, hotspot_fraction=0.2, read_ratio=0.8)
    sim.stop()
    hotspot_results = sim.get_summary()
    all_results["tiered_hotspot"] = hotspot_results
    print("  Hotspot GET p99:", hotspot_results.get("get", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Hotspot PUT p99:", hotspot_results.get("put", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Compression savings:", hotspot_results.get("compression_savings_bytes", {}))
    print("  Migration overhead:", hotspot_results.get("migration_overhead_ns", 0) / 1e6, "ms")
    
    # Benchmark 5: Tiered - Large payload (compression benefit)
    print("\n[5/5] Tiered: Large payload (8KB, high compression benefit)...")
    sim = Simulator()
    sim.start()
    sim.workload_random(n_ops=300, payload_size=8192, key_space=50, read_ratio=0.6)
    sim.stop()
    large_payload_results = sim.get_summary()
    all_results["tiered_large_payload"] = large_payload_results
    print("  Large payload GET p99:", large_payload_results.get("get", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Large payload PUT p99:", large_payload_results.get("put", {}).get("p99_ns", 0) / 1e6, "ms")
    print("  Tier utilization:", large_payload_results.get("tier_utilization_bytes", {}))
    print("  Compression savings:", large_payload_results.get("compression_savings_bytes", {}))
    
    # Summary and export
    print("\n" + "=" * 80)
    print("BENCHMARK SUMMARY")
    print("=" * 80)
    
    # Calculate speedup vs baseline
    baseline_get_p99 = baseline_results.get("get_baseline", {}).get("p99_ns", 1)
    baseline_put_p99 = baseline_results.get("put_baseline", {}).get("p99_ns", 1)
    
    print("\nLatency Comparison (p99, normalized to baseline DRAM-only):")
    print(f"  Baseline DRAM-only GET p99: {baseline_get_p99 / 1e6:.2f} ms (1.0x)")
    print(f"  Sequential GET p99:         {sequential_results.get('get', {}).get('p99_ns', baseline_get_p99) / 1e6:.2f} ms ({sequential_results.get('get', {}).get('p99_ns', baseline_get_p99) / baseline_get_p99:.2f}x)")
    print(f"  Random GET p99:             {random_results.get('get', {}).get('p99_ns', baseline_get_p99) / 1e6:.2f} ms ({random_results.get('get', {}).get('p99_ns', baseline_get_p99) / baseline_get_p99:.2f}x)")
    print(f"  Hotspot GET p99:            {hotspot_results.get('get', {}).get('p99_ns', baseline_get_p99) / 1e6:.2f} ms ({hotspot_results.get('get', {}).get('p99_ns', baseline_get_p99) / baseline_get_p99:.2f}x)")
    
    print(f"\n  Baseline DRAM-only PUT p99: {baseline_put_p99 / 1e6:.2f} ms (1.0x)")
    print(f"  Sequential PUT p99:         {sequential_results.get('put', {}).get('p99_ns', baseline_put_p99) / 1e6:.2f} ms ({sequential_results.get('put', {}).get('p99_ns', baseline_put_p99) / baseline_put_p99:.2f}x)")
    print(f"  Random PUT p99:             {random_results.get('put', {}).get('p99_ns', baseline_put_p99) / 1e6:.2f} ms ({random_results.get('put', {}).get('p99_ns', baseline_put_p99) / baseline_put_p99:.2f}x)")
    print(f"  Hotspot PUT p99:            {hotspot_results.get('put', {}).get('p99_ns', baseline_put_p99) / 1e6:.2f} ms ({hotspot_results.get('put', {}).get('p99_ns', baseline_put_p99) / baseline_put_p99:.2f}x)")
    
    # Save results to JSON
    with open("benchmark_results.json", "w") as f:
        json.dump(all_results, f, indent=2)
    print("\n✓ Results saved to benchmark_results.json")
    
    print("\n" + "=" * 80)

if __name__ == "__main__":
    run_benchmark_suite()
