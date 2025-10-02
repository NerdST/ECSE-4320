#!/usr/bin/env bash
# Run each FIO job from nvme_test.fio individually to produce per-job result blocks.
# Aggregated output will be appended to FIO_Benchmark.txt so the parser can pick them up.
# NOTE: Requires sudo/root access to /dev/nvme0n1p7. Adjust DEVICE variable if needed.

set -euo pipefail
DEVICE="/dev/nvme0n1p7"
RUNTIME=30
SIZE=10G
OUT_AGG="results/FIO_Benchmark.txt"

# Jobs we still need (excluding the one already executed: baseline_4k_randread)
JOBS=(
  baseline_4k_randwrite baseline_4k_read baseline_4k_write 
  baseline_128k_randread baseline_128k_randwrite baseline_128k_read baseline_128k_write 
  bsweep_4k_randread bsweep_16k_randread bsweep_32k_randread bsweep_64k_randread bsweep_128k_randread bsweep_256k_randread 
  bsweep_4k_read bsweep_16k_read bsweep_32k_read bsweep_64k_read bsweep_128k_read bsweep_256k_read 
  mix_100r mix_70r mix_50r 
  qd_1 qd_2 qd_4 qd_8 qd_16 qd_32 qd_64 qd_128
)

# Mapping job name patterns to parameters
function job_params() {
  local name="$1"
  local rw bs iodepth rwmix
  case "$name" in
    *_4k_*) bs=4k;;
    *_16k_*) bs=16k;;
    *_32k_*) bs=32k;;
    *_64k_*) bs=64k;;
    *_128k_*) bs=128k;;
    *_256k_*) bs=256k;;
    *) bs=4k;;
  esac
  # Queue depth from qd_* jobs
  if [[ $name =~ ^qd_([0-9]+)$ ]]; then
    iodepth="${BASH_REMATCH[1]}"; rw=randread
  else
    iodepth=1
  fi
  # Mix jobs
  if [[ $name =~ ^mix_([0-9]+)r$ ]]; then
    rw=randrw
    rwmix="${BASH_REMATCH[1]}"
    bs=4k
  fi
  if [[ -z "${rw:-}" ]]; then
    # derive rw from tokens
    if [[ $name == *randread* ]]; then rw=randread; fi
    if [[ $name == *randwrite* ]]; then rw=randwrite; fi
    if [[ $name == *randrw* || $name == mix_* ]]; then rw=randrw; fi
    if [[ $name == *read && $name != *randread* && $name != *randwrite* && $name != *randrw* ]]; then rw=read; fi
    if [[ $name == *write && $name != *randread* && $name != *randwrite* && $name != *randrw* ]]; then rw=write; fi
  fi
  echo "$rw $bs $iodepth ${rwmix:-}"
}

# Append a separator for clarity
printf "\n# --- Running missing jobs individually at $(date) ---\n" | tee -a "$OUT_AGG"

mkdir -p results/raw

for job in "${JOBS[@]}"; do
  echo "[INFO] Running $job" | tee -a "$OUT_AGG"
  read_rw_bs_qd_mix=( $(job_params "$job") )
  rw="${read_rw_bs_qd_mix[0]}"
  bs="${read_rw_bs_qd_mix[1]}"
  qd="${read_rw_bs_qd_mix[2]}"
  mixpct="${read_rw_bs_qd_mix[3]:-}"
  outfile="results/raw/fio_${job}.txt"
  extra=()
  if [[ -n $mixpct ]]; then
    extra+=(--rwmixread=${mixpct})
  fi
  # Use --output-format=normal to ensure parse friendly
  sudo fio \
    --name="$job" \
    --filename="$DEVICE" \
    --direct=1 \
    --ioengine=libaio \
    --time_based=1 --runtime=${RUNTIME} \
    --rw="$rw" --bs="$bs" --iodepth="$qd" --numjobs=1 \
    --size="$SIZE" \
    "${extra[@]}" \
    --group_reporting=0 \
    --output="$outfile"
  # Append the individual output to the aggregate benchmark file
  printf "\n# >>> Begin $job <<<\n" >> "$OUT_AGG"
  cat "$outfile" >> "$OUT_AGG"
  printf "\n# >>> End $job <<<\n" >> "$OUT_AGG"
  echo "[INFO] Appended $job results to $OUT_AGG" | tee -a "$OUT_AGG"
  sleep 2
done

echo "All missing jobs executed. Re-run parse_results.py to update tables/plots."