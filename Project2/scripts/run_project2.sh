#!/bin/bash
# Comprehensive experiment runner for Project 2.
# Produces data for all required plots & tables.
set -euo pipefail

###############################
# Configurable paths
###############################
MLC_PATH=${MLC_PATH:-$(pwd)/mlc}
PERF_PATH=${PERF_PATH:-/usr/lib/linux-tools/6.8.0-84-generic/perf}
# Standardized output directory name to align with Project1 style
OUTDIR=${OUTDIR:-results}
KERNEL=cache_tlb_kernel

mkdir -p "$OUTDIR"

echo "=== Project 2: Cache, Memory, & TLB Profiling ==="
echo "Output -> $OUTDIR" 

##############################################
# Build synthetic kernel (for cache/TLB sweeps)
##############################################
echo "[build] (re)Compiling cache/TLB kernel..."
g++ -O2 -std=c++17 ../kernel/cache_tlb_kernel.cpp -o ../kernel/$KERNEL -lpthread -lpthread

##############################################
# 1. Zero-queue baselines (idle latency)
##############################################
echo "[1] Zero-queue (idle) latencies..."
sudo $MLC_PATH --idle_latency > $OUTDIR/latencies.txt

##############################################
# 2. Pattern & granularity sweep (bandwidth matrix)
##############################################
echo "[2] Bandwidth matrix (pattern x stride)..."
sudo $MLC_PATH --bandwidth_matrix > $OUTDIR/bandwidth_matrix.txt

##############################################
# 3. Read/Write mix sweep
##############################################
echo "[3] Read/Write mixes (100R, 2:1, 1:1, NT write)..."
set +e
sudo $MLC_PATH --peak_injection_bandwidth -R  > $OUTDIR/bw_read.txt 2>/dev/null || echo "[warn] 100% read failed"
sudo $MLC_PATH --peak_injection_bandwidth -W2 > $OUTDIR/bw_rw2to1.txt 2>/dev/null || echo "[warn] 2:1 RW failed"
sudo $MLC_PATH --peak_injection_bandwidth -W5 > $OUTDIR/bw_rw1to1.txt 2>/dev/null || echo "[warn] 1:1 RW failed"
sudo $MLC_PATH --peak_injection_bandwidth -W6 > $OUTDIR/bw_write_nt.txt 2>/dev/null || echo "[warn] NT write failed"
set -e

##############################################
# 4. Intensity sweep (loaded latency)
##############################################
echo "[4] Intensity sweep (throughput vs latency)..."
sudo $MLC_PATH --loaded_latency > $OUTDIR/loaded_latency.txt

##############################################
# 5. Working-set size sweep (idle latency vs size)
##############################################
echo "[5] Working-set sweep (idle latency by size)..."
bash ./collect_workingset.sh "$OUTDIR/working_set_latency.csv"

##############################################
# 6 & 7. Cache & TLB miss impact using synthetic kernel + perf
##############################################
echo "[6/7] Cache & TLB miss sweeps via synthetic kernel + perf..."
PERF_EVENTS="cycles,instructions,cache-references,cache-misses,LLC-loads,LLC-load-misses,dTLB-load-misses,iTLB-load-misses"
CSV=$OUTDIR/perf_cachemiss_sweep.csv
echo "event,value,size_bytes,stride_bytes,threads,pattern,gbs,huge" > "$CSV"

# Parameter sweeps: sizes cross cache levels, strides provoking different locality
SIZES=(32K 64K 256K 1M 4M 16M 64M 128M)
STRIDES=(64 256 1024 4096)   # in bytes
THREADS=(1 2 4)              # concurrency levels
PATTERNS=(seq random)
ITERS=4

ENABLE_HUGEPAGE_SWEEP=${ENABLE_HUGEPAGE_SWEEP:-1}
HUGEPAGE_MIN_SIZE=$((16*1024*1024)) # only attempt huge pages for >=16MB

for sz in "${SIZES[@]}"; do
    for st in "${STRIDES[@]}"; do
        for th in "${THREADS[@]}"; do
            for pat in "${PATTERNS[@]}"; do
                for hugeflag in 0 1; do
                    if [[ $hugeflag -eq 1 ]]; then
                        [[ $ENABLE_HUGEPAGE_SWEEP -eq 1 ]] || continue
                        # Only try huge pages for larger sizes
                        # Convert size label to bytes via kernel output itself (run and parse)
                        [[ $sz =~ [Kk]$ ]] && continue  # skip small KB sizes
                    fi
                    echo "  > size=$sz stride=${st}B threads=$th pat=$pat huge=$hugeflag" 
                    HP_ARG=""; [[ $hugeflag -eq 1 ]] && HP_ARG="--huge"
                    KOUT=$(../kernel/$KERNEL --size=$sz --stride=$st --threads=$th --iters=$ITERS --pattern=$pat $HP_ARG)
                    SIZE_BYTES=$(echo "$KOUT" | cut -d',' -f1)
                    STRIDE_BYTES=$(echo "$KOUT" | cut -d',' -f2)
                    THR=$(echo "$KOUT" | cut -d',' -f3)
                    GBPS=$(echo "$KOUT" | cut -d',' -f8)
                    HUGE_USED=$(echo "$KOUT" | cut -d',' -f9)
                    sudo $PERF_PATH stat -x, -e $PERF_EVENTS -o perf_tmp.txt ../kernel/$KERNEL --size=$sz --stride=$st --threads=$th --iters=$ITERS --pattern=$pat $HP_ARG >/dev/null 2>&1 || true
                    while IFS=, read -r val empty evt rest; do
                        # Skip comments and headers
                        [[ $val =~ ^# ]] && continue
                        if [[ $val =~ ^[0-9]+$ ]] && [[ -n "$evt" ]]; then
                            echo "$evt,$val,$SIZE_BYTES,$STRIDE_BYTES,$THR,$pat,$GBPS,$HUGE_USED" >> "$CSV"
                        fi
                    done < perf_tmp.txt
                    rm -f perf_tmp.txt
                    # If huge allocation failed (HUGE_USED=0) we don't need to repeat attempts for hugeflag=1 for that size
                    if [[ $hugeflag -eq 1 && $HUGE_USED -eq 0 ]]; then
                        break
                    fi
                done
            done
        done
    done
done

echo "=== All experiments complete. Run 'python3 plot_project2.py' to generate plots. ==="

