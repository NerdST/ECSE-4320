#!/bin/bash
# Sweep buffer sizes to capture idle latency vs working set (L1 -> L2 -> L3 -> DRAM)
set -euo pipefail

MLC=${MLC_PATH:-./mlc}
OUT=${1:-results/working_set_latency.csv}
mkdir -p "$(dirname "$OUT")"
echo "size_kb,latency_ns" > "$OUT"

# Size points (KB) with optional dense sampling
DENSE=${DENSE_WS:-1}
if [[ $DENSE -eq 1 ]]; then
  # Finer resolution especially around L1 (~32K), L2 (~256K) and L3 (multi-MB)
  SIZES=(16 24 32 40 48 56 64 80 96 112 128 160 192 224 256 320 384 448 512 640 768 896 1024 1280 1536 1792 2048 2304 2560 2816 3072 3584 4096 4608 5120 5632 6144 6656 7168 7680 8192 9216 10240 11264 12288 13312 14336 15360 16384 18432 20480 22528 24576 28672 32768 36864 40960 45056 49152 53248 57344 61440 65536 98304 131072)
else
  SIZES=(16 32 48 64 96 128 192 256 384 512 768 1024 1536 2048 3072 4096 5120 6144 7168 8192 12288 16384 32768 65536 131072)
fi

for kb in "${SIZES[@]}"; do
  # mlc expects -b parameter in KB units (approx). Provide as integer.
  raw_line=$(sudo $MLC --idle_latency -b${kb} 2>/dev/null | awk '/Each iteration took/ {line=$0} END{print line}')
  # Example line: Each iteration took 11.9 base frequency clocks (        6.3     ns)
  # Extract number before 'ns' inside parentheses.
  ns=$(echo "$raw_line" | awk '{for(i=1;i<=NF;i++){ if($i ~ /^ns\)/){print $(i-1); exit}}}')
  if [[ "$ns" =~ ^[0-9]+\.?[0-9]*$ ]]; then
    echo "$kb,$ns" | tee -a "$OUT"
  else
    echo "[debug] parse failed for size KB=$kb line='$raw_line'" >&2
  fi
done
echo "Saved working-set latency sweep to $OUT"
