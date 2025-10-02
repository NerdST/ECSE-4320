#!/usr/bin/env python3
import re
import os
import math
import json
from dataclasses import dataclass, field
from typing import Dict, Optional, List, Tuple
import matplotlib.pyplot as plt
import pandas as pd

FIO_FILE = "results/FIO_Benchmark.txt" if os.path.exists("results/FIO_Benchmark.txt") else "FIO_Benchmark.txt"
PLOTS_DIR = "plots"

@dataclass
class RWStats:
    iops: Optional[float] = None
    bw_MBps: Optional[float] = None
    bw_MiBps: Optional[float] = None
    lat_avg_usec: Optional[float] = None   # avg completion latency (convert to usec)
    lat_unit: Optional[str] = None
    percentiles_usec: Dict[str, float] = field(default_factory=dict)

@dataclass
class JobResult:
    name: str
    mode: Optional[str] = None      # randread, randwrite, read, write, randrw
    bs: Optional[str] = None
    iodepth: Optional[int] = None
    executed: bool = False  # True if we saw a results header (groupid=...) for this job
    read: RWStats = field(default_factory=RWStats)
    write: RWStats = field(default_factory=RWStats)
    mixed: bool = False
    meta: Dict = field(default_factory=dict)

def to_number(v: str) -> float:
    try:
        return float(v)
    except:
        return math.nan

def parse_iops_bw(line: str) -> Tuple[Optional[float], Optional[float], Optional[float]]:
    # Examples:
    # read: IOPS=113k, BW=1097MiB/s (1150MB/s)
    # write: IOPS=14.2k, BW=472MiB/s (495MB/s)
    iops_match = re.search(r'IOPS=([\d\.]+)([kM]?)', line)
    bw_mib_match = re.search(r'BW=([\d\.]+)(KiB|MiB|GiB)/s', line)
    bw_mb_paren = re.search(r'\(([\d\.]+)MB/s\)', line)
    def scale(num, suf):
        num = float(num)
        if suf == 'k': return num * 1_000
        if suf == 'M': return num * 1_000_000
        return num
    iops = bw_MBps = bw_MiBps = None
    if iops_match:
        iops = scale(iops_match.group(1), iops_match.group(2))
    if bw_mib_match:
        val = float(bw_mib_match.group(1))
        unit = bw_mib_match.group(2)
        factor = {'KiB': 1/1024, 'MiB': 1.0, 'GiB': 1024}.get(unit, 1.0)
        bw_MiBps = val * factor
        bw_MBps = bw_MiBps * 1.048576  # MiB->MB
    if bw_mb_paren and bw_MBps is None:
        bw_MBps = float(bw_mb_paren.group(1))
    return iops, bw_MBps, bw_MiBps

def normalize_latency_unit(avg: float, unit: str) -> float:
    if avg is None or math.isnan(avg):
        return math.nan
    if unit == 'nsec':
        return avg / 1000.0
    if unit == 'usec':
        return avg
    if unit == 'msec':
        return avg * 1000.0
    return avg

def parse_percentiles(block_lines: List[str], unit: str) -> Dict[str, float]:
    pct = {}
    line_join = ' '.join(block_lines)
    # Pattern like 99.00th=[14091]
    for m in re.finditer(r'(\d{1,2}\.?\d{0,2})th=\[\s*([\d\.]+)\]', line_join):
        p = m.group(1)
        val = float(m.group(2))
        # Convert based on unit
        if unit == 'nsec':
            val = val / 1000.0
        elif unit == 'msec':
            val = val * 1000.0
        pct[p] = val
    # Derive p95/p99/p99.9 if present with keys '95.00', etc.
    aliases = {'95': '95.00', '99': '99.00', '99.9': '99.90', '99.95': '99.95', '99.99': '99.99'}
    for short, full in aliases.items():
        if full in pct and short not in pct:
            pct[short] = pct[full]
    return pct

def parse_fio(filename: str) -> Dict[str, JobResult]:
    with open(filename, 'r', errors='ignore') as f:
        lines = f.readlines()

    jobs: Dict[str, JobResult] = {}
    i = 0
    current_job: Optional[JobResult] = None
    pct_collect: List[str] = []
    pct_target_section = None
    pct_unit = None

    # Match any job header (definition or results)
    any_header_regex = re.compile(r'^([A-Za-z0-9_\-\.]+): \(')
    iodepth_regex_inline = re.compile(r'iodepth=(\d+)')
    mode_regex_inline = re.compile(r'rw=([a-zA-Z0-9]+)')
    bs_regex_inline = re.compile(r'bs=\(R\)\s*([0-9\.A-Za-z]+)-')

    while i < len(lines):
        line = lines[i].rstrip('\n')

        header_match = any_header_regex.match(line)
        if header_match:
            name = header_match.group(1)
            job = jobs.get(name, JobResult(name=name))
            jobs[name] = job

            # Capture inline metadata (present in definition lines "(g=0)" not "(groupid=...)")
            mm = mode_regex_inline.search(line)
            if mm:
                job.mode = mm.group(1)

            bm = bs_regex_inline.search(line)
            if bm:
                job.bs = bm.group(1)

            im = iodepth_regex_inline.search(line)
            if im:
                job.iodepth = int(im.group(1))

            # Only set current_job when this is a results header (has groupid=)
            if '(groupid=' in line:
                current_job = job
                current_job.executed = True
            else:
                # definition line only; do not change current_job
                pass
            i += 1
            continue

        if current_job:
            # read/write summary lines
            if line.strip().startswith('read: IOPS='):
                iops, bw_MBps, bw_MiBps = parse_iops_bw(line)
                current_job.read.iops = iops
                current_job.read.bw_MBps = bw_MBps
                current_job.read.bw_MiBps = bw_MiBps
            elif line.strip().startswith('write: IOPS='):
                iops, bw_MBps, bw_MiBps = parse_iops_bw(line)
                current_job.write.iops = iops
                current_job.write.bw_MBps = bw_MBps
                current_job.write.bw_MiBps = bw_MiBps

            # Average completion latency
            if line.strip().startswith('clat ('):
                m = re.search(r'clat \((nsec|usec|msec)\):.*avg=([\d\.]+)', line)
                if m:
                    unit = m.group(1)
                    avg = float(m.group(2))
                    # Heuristic: assign to first stats object lacking avg
                    target = current_job.read if current_job.read.lat_avg_usec is None else current_job.write
                    target.lat_unit = unit
                    target.lat_avg_usec = normalize_latency_unit(avg, unit)

            # Percentiles collection
            if 'clat percentiles (' in line:
                pct_collect = []
                pct_target_section = 'clat'
                pct_unit = re.search(r'clat percentiles \((nsec|usec|msec)\):', line).group(1)
            elif pct_target_section and line.strip().startswith('|'):
                pct_collect.append(line.strip())
            else:
                if pct_target_section and pct_collect:
                    pct = parse_percentiles(pct_collect, pct_unit)
                    target = current_job.read if not current_job.read.percentiles_usec else current_job.write
                    target.percentiles_usec.update(pct)
                    pct_collect = []
                    pct_target_section = None
                    pct_unit = None

        i += 1

    # Infer missing mode from job name if absent
    for name, job in jobs.items():
        if not job.mode:
            lowered = name.lower()
            if 'randread' in lowered: job.mode = 'randread'
            elif 'randwrite' in lowered: job.mode = 'randwrite'
            elif re.search(r'\bread\b', lowered): job.mode = 'read'
            elif re.search(r'\bwrite\b', lowered): job.mode = 'write'
            elif 'randrw' in lowered: job.mode = 'randrw'
    return jobs

def df_from_jobs(jobs: Dict[str, JobResult]) -> pd.DataFrame:
    rows = []
    for name, jr in jobs.items():
        def get_pct(stats: RWStats, p):
            return stats.percentiles_usec.get(str(p)) or stats.percentiles_usec.get(f"{p}.00") or math.nan
        rows.append({
            'job': name,
            'mode': jr.mode,
            'bs': jr.bs,
            'iodepth': jr.iodepth,
            'read_iops': jr.read.iops,
            'read_bw_MBps': jr.read.bw_MBps,
            'read_lat_avg_us': jr.read.lat_avg_usec,
            'read_p50_us': get_pct(jr.read, '50'),
            'read_p95_us': get_pct(jr.read, '95'),
            'read_p99_us': get_pct(jr.read, '99'),
            'read_p999_us': get_pct(jr.read, '99.9'),
            'write_iops': jr.write.iops,
            'write_bw_MBps': jr.write.bw_MBps,
            'write_lat_avg_us': jr.write.lat_avg_usec,
            'write_p50_us': get_pct(jr.write, '50'),
            'write_p95_us': get_pct(jr.write, '95'),
            'write_p99_us': get_pct(jr.write, '99'),
            'write_p999_us': get_pct(jr.write, '99.9'),
        })
    return pd.DataFrame(rows)

def save_table(df: pd.DataFrame, path: str):
    df.to_csv(path, index=False)
    print(f"Wrote {path}")

def zero_queue_baselines(df: pd.DataFrame):
    mask = (df['iodepth'] == 1)
    subset = df[mask].copy()
    if subset.empty:
        print("No QD=1 jobs found.")
        return

    def norm_bs(bs):
        if not isinstance(bs, str):
            return None
        s = bs.lower()
        if s.endswith('b') and s[:-1].isdigit():
            # bytes → try convert
            try:
                val = int(s[:-1])
                if val == 4096:
                    return '4k'
            except:
                pass
        return s.replace('kib','k').replace('kb','k')

    subset['bs_norm'] = subset['bs'].map(norm_bs)

    targets = []

    # 4K random read
    rr = subset[(subset['mode'] == 'randread') & (subset['bs_norm'].isin(['4k','4096b', None]))]
    if not rr.empty:
        row = rr.head(1).copy()
        row['baseline'] = '4K_randread'
        targets.append(row)
    # 4K random write
    rw = subset[(subset['mode'] == 'randwrite') & (subset['bs_norm'].isin(['4k','4096b', None]))]
    if not rw.empty:
        row = rw.head(1).copy()
        row['baseline'] = '4K_randwrite'
        targets.append(row)
    # 128K sequential read
    sr = subset[(subset['mode'] == 'read') & (subset['bs_norm'].str.contains('128k', na=False))]
    if not sr.empty:
        row = sr.head(1).copy()
        row['baseline'] = '128K_read'
        targets.append(row)
    # 128K sequential write
    sw = subset[(subset['mode'] == 'write') & (subset['bs_norm'].str.contains('128k', na=False))]
    if not sw.empty:
        row = sw.head(1).copy()
        row['baseline'] = '128K_write'
        targets.append(row)

    if not targets:
        print("Baseline patterns not present in file.")
        return

    baseline_df = pd.concat(targets)
    cols = [
        'baseline',
        'read_lat_avg_us','read_p50_us','read_p95_us','read_p99_us',
        'write_lat_avg_us','write_p50_us','write_p95_us','write_p99_us',
        'read_iops','write_iops','read_bw_MBps','write_bw_MBps'
    ]
    existing = [c for c in cols if c in baseline_df.columns]
    baseline_df[existing].to_markdown('baseline_table.md', index=False)
    print("Zero-queue baseline table -> baseline_table.md")

def queue_depth_sweep(df: pd.DataFrame):
    qd = df[df['job'].str.match(r'qd_\d+') & df['mode'].str.contains('randread', na=False)]
    if qd.empty:
        print("No queue depth sweep data found.")
        return
    qd = qd.copy()
    qd['qd'] = qd['job'].str.extract(r'qd_(\d+)').astype(int)
    qd = qd.sort_values('qd')

    thr = qd['read_iops']
    lat = qd['read_lat_avg_us']
    fig, ax = plt.subplots(figsize=(5,4))
    ax.plot(lat, thr, marker='o')
    for x,y,q in zip(lat, thr, qd['qd']):
        ax.annotate(f"QD{q}", (x,y), textcoords="offset points", xytext=(4,4), fontsize=8)
    ax.set_xlabel("Avg Latency (usec)")
    ax.set_ylabel("Throughput (IOPS)")
    ax.set_title("Throughput vs Latency (4K randread)")
    ax.grid(True, linestyle='--', alpha=0.4)

    # Knee via curvature-like heuristic (relative slope drop)
    knee_idx = None
    slopes = []
    for i in range(1, len(qd)):
        d_thr = thr.iloc[i] - thr.iloc[i-1]
        d_lat = lat.iloc[i] - lat.iloc[i-1]
        if d_lat > 0:
            slopes.append((i, d_thr / d_lat))
    if slopes:
        max_slope = max(s for _, s in slopes)
        for i, s in slopes:
            if s < 0.3 * max_slope:
                knee_idx = i
                break
    if knee_idx is not None:
        ax.axvline(lat.iloc[knee_idx], color='red', linestyle='--', alpha=0.6, label='Knee')
        ax.legend()

    os.makedirs(PLOTS_DIR, exist_ok=True)
    out = os.path.join(PLOTS_DIR, "qd_tradeoff.png")
    plt.tight_layout()
    plt.savefig(out, dpi=140)
    plt.close()
    print(f"Wrote {out}")

    # Tail latency table (mid + knee)
    mid_idx = len(qd)//2
    chosen = []
    if knee_idx is not None:
        chosen.append(qd.iloc[knee_idx])
    chosen.append(qd.iloc[mid_idx])
    tail_rows = []
    for _, row in pd.DataFrame(chosen).drop_duplicates(subset='qd').iterrows():
        tail_rows.append({
            'job': row['job'],
            'qd': row['qd'],
            'iops': row['read_iops'],
            'avg_lat_us': row['read_lat_avg_us'],
            'p50_us': row.get('read_p50_us'),
            'p95_us': row.get('read_p95_us'),
            'p99_us': row.get('read_p99_us'),
            'p99.9_us': row.get('read_p999_us'),
        })
    tail_df = pd.DataFrame(tail_rows)
    tail_df.to_markdown("tail_latency.md", index=False)
    print("Tail latency table -> tail_latency.md")

def block_size_sweep(df: pd.DataFrame):
    # Expect job names like bsweep_<size>_(randread|read)
    sweep = df[df['job'].str.startswith('bsweep_')]
    if sweep.empty:
        print("No block-size sweep data found.")
        return

    # Derive size token
    sweep = sweep.copy()
    sweep['size_tok'] = sweep['job'].str.extract(r'bsweep_([0-9]+k|[0-9]+m|4k|16k|32k|64k|128k|256k|512k|1m)', expand=False)
    if sweep['size_tok'].isna().all():
        print("Could not parse block sizes for sweep.")
        return

    # Convert to KiB numeric
    def to_kib(tok):
        if pd.isna(tok):
            return math.nan
        tok = tok.lower()
        if tok.endswith('k'):
            return float(tok[:-1])
        if tok.endswith('m'):
            return float(tok[:-1]) * 1024.0
        return math.nan
    sweep['size_kib'] = sweep['size_tok'].map(to_kib)

    # Keep only rows with some read metrics
    sweep = sweep[~sweep['read_iops'].isna()]

    for pattern in ['randread', 'read']:
        pat_df = sweep[sweep['mode'] == pattern].sort_values('size_kib')
        if pat_df.empty:
            continue

        sizes = pat_df['size_kib'].values
        read_iops = pat_df['read_iops'].values
        read_bw = pat_df['read_bw_MBps'].values
        read_lat = pat_df['read_lat_avg_us'].values

        # Mask for IOPS vs MB/s demarcation
        iops_mask = sizes <= 64   # ≤64KiB show IOPS
        mb_mask = sizes >= 128    # ≥128KiB show MB/s

        fig, ax1 = plt.subplots(figsize=(7,4))
        ax1.set_xscale('log', base=2)
        ax1.set_xlabel("Block Size (KiB) (log2)")
        ax1.set_ylabel("IOPS (≤64KiB)")

        if iops_mask.any():
            ax1.plot(sizes[iops_mask], read_iops[iops_mask], marker='o', label='Read IOPS', color='tab:blue')

        ax2 = ax1.twinx()
        ax2.set_ylabel("Throughput MB/s (≥128KiB)")
        if mb_mask.any():
            ax2.plot(sizes[mb_mask], read_bw[mb_mask], marker='s', label='Read MB/s', color='tab:orange')

        ax3 = ax1.twinx()
        ax3.spines.right.set_position(("outward", 55))
        ax3.set_ylabel("Avg Latency (usec)")
        ax3.plot(sizes, read_lat, marker='^', label='Avg Lat (us)', color='tab:green')

        ax1.set_title(f"Block Size Sweep ({pattern})")
        ax1.grid(True, which='both', linestyle='--', alpha=0.4)

        # Combine legends
        handles = []
        labels = []
        for a in (ax1, ax2, ax3):
            h, l = a.get_legend_handles_labels()
            handles.extend(h); labels.extend(l)
        ax1.legend(handles, labels, fontsize=8, loc='best')

        os.makedirs(PLOTS_DIR, exist_ok=True)
        out = os.path.join(PLOTS_DIR, f"bsweep_{pattern}.png")
        plt.tight_layout()
        plt.savefig(out, dpi=140)
        plt.close()
        print(f"Wrote {out}")

def mix_sweep(df: pd.DataFrame):
    mix = df[df['job'].str.startswith('mix_')].copy()
    if mix.empty:
        print("No read/write mix data found.")
        return

    # Extract % read (assumes naming like mix_100r, mix_70r, mix_50r etc.)
    mix['pct_read'] = mix['job'].str.extract(r'mix_(\d+)[rR]').astype(float)
    if mix['pct_read'].isna().all():
        print("Could not parse read percentages in mix jobs.")
        return

    mix = mix.sort_values('pct_read', ascending=False)

    fig, ax1 = plt.subplots(figsize=(6,4))
    ax1.plot(mix['pct_read'], mix['read_bw_MBps'].fillna(0), marker='o', label='Read MB/s', color='tab:blue')
    ax1.plot(mix['pct_read'], mix['write_bw_MBps'].fillna(0), marker='s', label='Write MB/s', color='tab:orange')
    ax1.set_xlabel("% Read (4K rand mix)")
    ax1.set_ylabel("Throughput (MB/s)")

    ax2 = ax1.twinx()
    ax2.plot(mix['pct_read'], mix['read_lat_avg_us'], marker='^', label='Read Lat (us)', color='tab:green')
    ax2.plot(mix['pct_read'], mix['write_lat_avg_us'], marker='v', label='Write Lat (us)', color='tab:red')
    ax2.set_ylabel("Latency (usec)")

    ax1.set_title("Read/Write Mix Sweep")
    ax1.grid(True, linestyle='--', alpha=0.4)

    handles = []
    labels = []
    for a in (ax1, ax2):
        h, l = a.get_legend_handles_labels()
        handles.extend(h); labels.extend(l)
    ax1.legend(handles, labels, fontsize=8, loc='best')

    os.makedirs(PLOTS_DIR, exist_ok=True)
    out = os.path.join(PLOTS_DIR, "mix_sweep.png")
    plt.tight_layout()
    plt.savefig(out, dpi=140)
    plt.close()
    print(f"Wrote {out}")

def main():
    if not os.path.exists(FIO_FILE):
        print(f"Missing {FIO_FILE}")
        return
    jobs = parse_fio(FIO_FILE)

    # Identify jobs that were never executed (definitions only) – keep only executed or those with some stats
    executed_jobs: Dict[str, JobResult] = {}
    skipped = []
    for name, jr in jobs.items():
        has_metrics = any([
            jr.read.iops, jr.read.lat_avg_usec, jr.write.iops, jr.write.lat_avg_usec,
            jr.read.percentiles_usec, jr.write.percentiles_usec
        ])
        if jr.executed or has_metrics:
            executed_jobs[name] = jr
        else:
            skipped.append(name)
    if skipped:
        print(f"Warning: {len(skipped)} job definitions had no results (likely due to group_reporting combining output or they were not run):")
        print("  " + ", ".join(skipped[:12]) + ("..." if len(skipped) > 12 else ""))
        print("Run those jobs separately (e.g., separate .fio runs without group_reporting) to collect their individual metrics.")
    jobs = executed_jobs
    df = df_from_jobs(jobs)
    os.makedirs("tables", exist_ok=True)
    save_table(df, os.path.join("tables","all_jobs.csv"))
    # Experiments
    zero_queue_baselines(df)
    block_size_sweep(df)
    mix_sweep(df)
    queue_depth_sweep(df)
    # Save raw JSON
    with open(os.path.join("tables","raw_jobs.json"), 'w') as f:
        json.dump({k: v.__dict__ for k,v in jobs.items()}, f, default=lambda o: o.__dict__, indent=2)
    print("Done.")

if __name__ == "__main__":
    main()