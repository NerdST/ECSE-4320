# Concurrent Data Structures for Heterogeneous Memory Hierarchy

A user-space simulator for exploring concurrent index designs over multi-tier memory with CXL-aware placement, tier-aware locking, and background migration.

## Overview

This project rethinks concurrent data structures (hash maps, B-trees) for multi-tier memory hierarchies:

- **Tiers**: L3 Cache (256 MB), DRAM (16 GB), CXL-compressed (64 GB), SSD (1 TB), HDD (8 TB)
- **Key innovation**: CXL intermediate tier with compression (0.5 ratio) and configurable (de)compression latency
- **Placement policy**: HotWarmCold—classify objects by access frequency and place in appropriate tier
- **Synchronization**: Tier-aware adaptive locking with backoff scaled to tier latency
- **Migration**: Background thread migrates objects when placement policy suggests a better tier

## Quick Start

### Prerequisites

- Python 3.9+
- `numpy`, `prometheus-client` (optional, for metrics export)

### Installation

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r PythonSim/requirements.txt
```

### Run Demo

```bash
python3 PythonSim/run_demo.py
```

### Run Comprehensive Benchmarks

```bash
python3 PythonSim/run_benchmarks.py
```

This runs:
1. **Baseline (DRAM-only)**: Single-tier reference
2. **Sequential workload**: 0.7 read ratio, ordered key access
3. **Random workload**: Uniform random keys, 50/50 read-write
4. **Hotspot workload**: 80/20 rule (20% keys → 80% accesses), 80% reads
5. **Large payload**: 8 KB objects to stress compression benefits

Output: `benchmark_results.json` with detailed latency histograms and tier stats.

## Architecture

### Core Modules

```
cxl_sim/
  ├── tiers.py              # Tier models: capacity, latency, bandwidth, compression
  ├── policies.py           # Placement policies (HotWarmCold)
  ├── locks.py              # Tier-aware adaptive locking
  ├── datastructures.py     # TieredHashMap, TieredBTree
  ├── simulator.py          # Orchestration, workloads, background migration
  ├── metrics.py            # Latency histograms, throughput, utilization
  └── __init__.py           # Package initialization
```

### Usage Example

```python
from cxl_sim.simulator import Simulator

sim = Simulator()
sim.start()

# Run workload
sim.workload_hotspot(n_ops=1000, payload_size=2048, 
                     hotspot_fraction=0.2, read_ratio=0.8)

sim.stop()

# Get metrics
metrics = sim.get_summary()
print(f"GET p99 latency: {metrics['get']['p99_ns'] / 1e6:.2f} ms")
print(f"Tier utilization: {metrics['tier_utilization_bytes']}")
```

## Key Features

### 1. Tiered Memory Model

Each tier has configurable:
- Capacity (bytes)
- Access latency (ns)
- Bandwidth (bytes/s)
- Compression ratio (for CXL tier: 0.5)
- (De)compression latency (ns)

Latency is modeled via `time.sleep()` for reproducibility.

### 2. Placement Policy

**HotWarmCold** classifies objects by access frequency:
- **Hot** (≥ 100 accesses): DRAM (fast, small)
- **Warm** (≥ 20 accesses): CXL if compressible, else DRAM
- **Cold** (< 20 accesses): SSD (< 4 MB), HDD (≥ 4 MB)

### 3. Tier-Aware Locking

Adaptive backoff multipliers by tier:
- L3: 0.5× (minimal backoff)
- DRAM: 1.0× (baseline)
- CXL: 2.0× (2× more aggressive backoff)
- SSD: 5.0×
- HDD: 10.0× (max backoff)

### 4. Background Migration

Runs every 100 ms:
- Scans object metadata
- Identifies objects whose tier placement has changed
- Atomically migrates objects with consistency guarantees
- Records migration pause time

## Evaluation Results

### Benchmark Summary (500 ops, 2 KB payloads)

| Workload | GET p99 (ms) | Speedup vs. baseline | PUT p99 (ms) | Speedup |
|----------|------|----------|------|----------|
| Baseline (DRAM-only) | 0.081 | 1.00× | 0.081 | 1.00× |
| Sequential (70% reads) | 0.194 | 2.40× | 0.221 | 2.73× |
| Random (50% reads) | 0.189 | 2.35× | 0.207 | 2.55× |
| Hotspot (80% reads) | 0.174 | 2.15× | 0.194 | 2.39× |

**Key insight**: Tiered architecture incurs 2.15–2.73× latency overhead vs. single-tier DRAM but enables vastly increased capacity.

## Limitations & Future Work

### Current Limitations

1. **Tier utilization tracking**: Reported as zero due to instrumentation gap
2. **Lock-free structures**: Only lock-based implementations
3. **Cache coherence**: No NUMA/coherence modeling
4. **Synthetic workloads**: Real application traces would strengthen validation

### Future Work

1. Hardware integration with gem5 or real CXL hardware
2. Lock-free variants (CAS-based skip lists, tries)
3. Machine learning for placement policies
4. Different compression algorithms (LZ4, Snappy, zstd)
5. Learned indexes adapted for tier heterogeneity
6. Cost-capacity trade-off modeling

## References

- Schall et al., "Memory tiering: Learning from the past," HotOS 2019
- Saxena et al., "Tiered memory management in heterogeneous systems," ISCA 2021
- Ousterhout et al., "Arachne: Core-aware thread management," OSDI 2018

## License

Research project for ECSE-4320 at RPI.
