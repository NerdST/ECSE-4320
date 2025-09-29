#!/bin/bash
set -e

# Adjust these paths if needed
MLC_PATH=/mnt/shared/sangeeth/Documents/RPI/Semester7/ECSE-4320/Project2/mlc
PERF_PATH=/usr/lib/linux-tools/6.8.0-84-generic/perf

OUTDIR=proj2_results
mkdir -p $OUTDIR

echo "=== Project 2: Cache & Memory Profiling ==="

##############################################
# 1. Zero-queue latency
##############################################
echo "[1] Measuring idle latencies..."
sudo $MLC_PATH --idle_latency > $OUTDIR/latencies.txt

##############################################
# 2. Pattern & granularity sweep
##############################################
echo "[2] Bandwidth matrix (stride & pattern)..."
sudo $MLC_PATH --bandwidth_matrix > $OUTDIR/bandwidth_matrix.txt

##############################################
# 3. Read/Write mix sweep
##############################################
echo "[3] Read/Write mixes..."
sudo $MLC_PATH --peak_injection_bandwidth -R  > $OUTDIR/bw_read.txt      # 100% read
sudo $MLC_PATH --peak_injection_bandwidth -W6 > $OUTDIR/bw_write.txt     # 100% write
sudo $MLC_PATH --peak_injection_bandwidth -W2 > $OUTDIR/bw_rw70_30.txt   # ~70/30
sudo $MLC_PATH --peak_injection_bandwidth -W5 > $OUTDIR/bw_rw50_50.txt   # 50/50
# If your MLC supports ratios, add here (e.g., 70/30, 50/50)

##############################################
# 4. Intensity sweep (throughput–latency curve)
##############################################
echo "[4] Loaded latency (intensity sweep)..."
sudo $MLC_PATH --loaded_latency > $OUTDIR/loaded_latency.txt

##############################################
# 5. Working-set sweep
##############################################
# NOTE: You’ll adapt this if you want to use your own kernel.
# For now, placeholder with bandwidth matrix covers the cache transitions.
cp $OUTDIR/bandwidth_matrix.txt $OUTDIR/working_set.txt

##############################################
# 6. Cache-miss impact with perf
##############################################
echo "[6] perf stats (cache misses)..."
sudo $PERF_PATH stat -a -x, -o $OUTDIR/perf_cache.csv \
    ls > /dev/null

##############################################
# 7. TLB-miss impact with perf
##############################################
echo "[7] perf stats (TLB misses)..."
sudo $PERF_PATH stat -a -x, -o $OUTDIR/perf_tlb.csv \
    -e dTLB-load-misses,iTLB-load-misses \
    ls > /dev/null

echo "=== All results saved in $OUTDIR/ ==="
