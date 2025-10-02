#!/usr/bin/env python3
"""Project 2 plotting & parsing utilities.

Generates the required plots:
 1. Zero-queue baseline latency table (printed & saved).
 2. Pattern & granularity (sequential vs random, stride) from perf kernel CSV.
 3. Read/write mix bandwidth bars from MLC peak injection outputs.
 4. Intensity sweep (throughput vs latency) from loaded_latency.txt (MLC).
 5. Working-set size sweep (latency vs size) + annotated cache level regions.
 6. Cache-miss impact (miss rate vs throughput) from perf_cachemiss_sweep.csv.
 7. TLB-miss impact (dTLB misses vs throughput) from same CSV (different subset).

Assumptions:
 - run_project2.sh produced files in proj2_results/
 - collect_workingset.sh produced working_set_latency.csv
 - cache_tlb_kernel experiments with perf produced perf_cachemiss_sweep.csv
 - MLC loaded latency file named loaded_latency.txt (default script)
 - Read/write mixes saved as bw_read.txt, bw_write.txt, bw_rw70_30.txt, bw_rw50_50.txt

Usage:
  python3 plot_project2.py

Outputs (PNG) saved into proj2_results/plots/
"""
from __future__ import annotations
import re
import math
import pathlib
import statistics as stats
from typing import List, Tuple
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

RESULTS_DIR = pathlib.Path('results')
PLOTS_DIR = RESULTS_DIR / 'plots'
PLOTS_DIR.mkdir(parents=True, exist_ok=True)

# ---------------------------------------------------------------------------
# Option A: Manual cache boundary override
# If USE_MANUAL_CACHE_BOUNDARIES is True, the plotting code will use the
# boundaries specified in MANUAL_CACHE_BOUNDARIES_KB (sizes in KB) instead of
# performing automatic inference. These represent the transition points
# BETWEEN levels (i.e., the upper size limit of the preceding level / the first
# size belonging to the next level). For the CPU documented in Project 1:
#   L1  = 32 KB per core
#   L2  = 256 KB per core
#   L3  = 6 MB shared (6144 KB)
# Therefore the boundaries list is [32, 256, 6144]. You can change these if you
# run on a different machine. If a boundary falls outside the sampled size
# range it will be ignored gracefully.
# ---------------------------------------------------------------------------
USE_MANUAL_CACHE_BOUNDARIES = True
MANUAL_CACHE_BOUNDARIES_KB = [32, 256, 6144]

def parse_loaded_latency(path: pathlib.Path) -> pd.DataFrame:
    pat = re.compile(r'^(\d+)\s+([0-9.]+)\s+([0-9.]+)')
    rows = []
    capture = False
    lines = path.read_text().splitlines()
    # Detect header; if absent, try to parse all numeric triple lines directly
    header_found = any(l.strip().startswith('Delay') and 'Latency' in l for l in lines)
    for line in lines:
        if header_found:
            if line.strip().startswith('Delay') and 'Latency' in line and 'Bandwidth' in line:
                capture = True
                continue
            if capture:
                if not line.strip():
                    break
                m = pat.match(line.strip())
                if m:
                    inj, lat, bw = m.groups()
                    rows.append((int(inj), float(lat), float(bw)))
        else:
            m = pat.match(line.strip())
            if m:
                inj, lat, bw = m.groups()
                rows.append((int(inj), float(lat), float(bw)))
    return pd.DataFrame(rows, columns=['inject_delay','latency_ns','bandwidth_MB_s'])

def find_knee(df: pd.DataFrame) -> Tuple[int,float]:
    # Simple heuristic: point maximizing (bw / latency) or largest second derivative drop
    ratios = df['bandwidth_MB_s'] / df['latency_ns']
    idx = ratios.idxmax()
    return int(df.loc[idx,'inject_delay']), float(df.loc[idx,'latency_ns'])

def parse_working_set(path: pathlib.Path) -> pd.DataFrame:
    df = pd.read_csv(path)
    df['size_bytes'] = df['size_kb'] * 1024
    return df

def infer_cache_boundaries(df: pd.DataFrame) -> list:
    """Infer cache boundary sizes (KB) using smoothed derivative.

    Returns up to three boundary sizes that separate L1/L2, L2/L3, L3/Memory.
    """
    if df.empty or len(df) < 4:
        return []
    s = df.sort_values('size_kb')
    sizes = s['size_kb'].to_numpy()
    lats = s['latency_ns'].to_numpy()
    # median smoothing window=3
    med = pd.Series(lats).rolling(3, center=True, min_periods=1).median().to_numpy()
    # EMA smoothing
    alpha = 0.3
    ema = []
    for v in med:
        if not ema:
            ema.append(v)
        else:
            ema.append(alpha*v + (1-alpha)*ema[-1])
    ema = np.array(ema)
    log_sizes = np.log(sizes)
    dlat = np.diff(ema)
    dlog = np.diff(log_sizes)
    with np.errstate(divide='ignore', invalid='ignore'):
        slope = dlat / dlog
    finite = slope[np.isfinite(slope)]
    if finite.size == 0:
        return []
    med_s = np.median(finite)
    std_s = np.std(finite)
    thresh = med_s + 1.5*std_s
    cand = np.where(slope > thresh)[0]
    boundaries = []
    last = 0
    for idx in cand:
        b = sizes[idx+1]
        if boundaries and b < 1.1*last:
            continue
        boundaries.append(b)
        last = b
        if len(boundaries) >= 3:
            break
    if not boundaries:  # fallback ratio heuristic
        for i in range(1,len(lats)):
            if lats[i] > 1.5*lats[i-1]:
                boundaries.append(sizes[i])
                if len(boundaries) >= 3:
                    break
    return boundaries

def annotate_cache_levels(ax, df: pd.DataFrame):
    df = df.sort_values('size_kb')
    sizes = df['size_kb'].to_numpy()
    if USE_MANUAL_CACHE_BOUNDARIES:
        # Keep only boundaries that lie strictly within the plotted range.
        boundaries = [b for b in MANUAL_CACHE_BOUNDARIES_KB if sizes[0] < b < sizes[-1]]
    else:
        boundaries = infer_cache_boundaries(df)
    palette = ["#7aefff","#7bff80","#ffce85","#ff5e96"]
    labels = ['L1','L2','L3','Memory']
    spans = []
    start = sizes[0]
    for b in boundaries:
        spans.append((start,b))
        start = b
    spans.append((start, sizes[-1]))
    spans = spans[:len(labels)]
    for (span,(label,color)) in zip(spans, zip(labels,palette)):
        a,b = span
        ax.axvspan(a, b, alpha=0.50, color=color)
        mid = (a+b)/2
        ax.text(mid, ax.get_ylim()[0] + 0.05*(ax.get_ylim()[1]-ax.get_ylim()[0]), label,
                ha='center', va='bottom', fontsize=9, fontweight='bold', color='black',
                bbox=dict(facecolor=color, edgecolor='none', alpha=0.70, boxstyle='round,pad=0.15'))

def parse_rw_bandwidth(files: List[Tuple[str, pathlib.Path]]) -> pd.DataFrame:
    rows = []
    for label, path in files:
        if not path.exists():
            continue
        txt = path.read_text().splitlines()
        # Look for last numeric line containing only a float or pattern of spaces then float
        nums = []
        for ln in txt:
            m = re.findall(r'([0-9]+\.[0-9]+)', ln)
            if m:
                nums.extend([float(x) for x in m])
        if nums:
            rows.append((label, max(nums)))  # crude: take max as peak MB/s
    return pd.DataFrame(rows, columns=['mix','bandwidth_MB_s'])

def plot_intensity(df: pd.DataFrame):
    fig, ax1 = plt.subplots(figsize=(6,4))
    ax1.plot(df['bandwidth_MB_s'], df['latency_ns'], marker='o')
    ax1.set_xlabel('Throughput (MB/s)')
    ax1.set_ylabel('Latency (ns)')
    knee_delay, knee_lat = find_knee(df)
    knee_bw = float(df[df['inject_delay']==knee_delay]['bandwidth_MB_s'])
    ax1.scatter([knee_bw],[knee_lat], color='red', zorder=5, label=f'knee delay={knee_delay}')
    ax1.legend()
    ax1.set_title('Intensity Sweep: Throughput vs Latency')
    fig.tight_layout()
    fig.savefig(PLOTS_DIR/'intensity_throughput_latency.png', dpi=160)

def main():
    # 4. Intensity sweep
    ll_file = RESULTS_DIR/'loaded_latency.txt'
    if ll_file.exists():
        ll_df = parse_loaded_latency(ll_file)
        plot_intensity(ll_df)
    # 5. Working-set size sweep
    ws_file = RESULTS_DIR/'working_set_latency.csv'
    if ws_file.exists():
        try:
            ws_df = parse_working_set(ws_file)
            # Ensure numeric
            ws_df = ws_df[pd.to_numeric(ws_df['latency_ns'], errors='coerce').notna()]
            ws_df['latency_ns'] = ws_df['latency_ns'].astype(float)
            if not ws_df.empty:
                # Interpolate to create smoother curve (log-space on size)
                ws_df = ws_df.sort_values('size_kb')
                sizes = ws_df['size_kb'].values
                lats = ws_df['latency_ns'].values
                # Generate log-spaced interpolation points (avoid extrapolating beyond original range)
                interp_sizes = np.unique(np.logspace(np.log10(sizes[0]), np.log10(sizes[-1]), 300))
                # Piecewise linear interpolation in log-size domain
                lat_interp = np.interp(np.log10(interp_sizes), np.log10(sizes), lats)
                fig, ax = plt.subplots(figsize=(6.4,4.2))
                ax.plot(interp_sizes, lat_interp, color='#1565c0', linewidth=1.5, label='Latency (interp)')
                ax.scatter(sizes, lats, color='#0d47a1', s=18, zorder=3, label='Measured')
                ax.set_xscale('log')
                ax.set_xlabel('Working Set (KB, log scale)')
                ax.set_ylabel('Latency (ns)')
                annotate_cache_levels(ax, ws_df)
                ax.set_title('Working-set Latency vs Size (Smoothed)')
                ax.legend(loc='upper left')
                ax.grid(alpha=0.25, which='both')
                fig.tight_layout()
                fig.savefig(PLOTS_DIR/'working_set_latency.png', dpi=160)
        except Exception as e:
            print(f"[warn] Skipping working set plot due to parse issue: {e}")
    # 3. Read/Write mix
    bw_df = parse_rw_bandwidth([
        ('100R', RESULTS_DIR/'bw_read.txt'),
        ('100W', RESULTS_DIR/'bw_write.txt'),
        ('70/30', RESULTS_DIR/'bw_rw70_30.txt'),
        ('50/50', RESULTS_DIR/'bw_rw50_50.txt'),
    ])
    if not bw_df.empty:
        fig, ax = plt.subplots(figsize=(5,4))
        ax.bar(bw_df['mix'], bw_df['bandwidth_MB_s'], color='#90caf9')
        ax.set_ylabel('Bandwidth (MB/s)')
        ax.set_title('Read/Write Mix Peak Bandwidth')
        fig.tight_layout()
        fig.savefig(PLOTS_DIR/'rw_mix_bandwidth.png', dpi=160)
    # 6 & 7. Cache/TLB miss impact (from perf CSV if exists)
    perf_csv = RESULTS_DIR/'perf_cachemiss_sweep.csv'
    if perf_csv.exists():
        df_raw = pd.read_csv(perf_csv)
        # Pivot event rows (one per event) into columns for easier aggregation
        if 'event' in df_raw.columns:
            idx_cols = [c for c in ['size_bytes','stride_bytes','threads','pattern','gbs','huge'] if c in df_raw.columns]
            # Some events repeat across patterns/threads/size; keep first (they should be consistent within a row group)
            df = (df_raw
                  .pivot_table(index=idx_cols, columns='event', values='value', aggfunc='first')
                  .reset_index())
        else:
            df = df_raw.copy()

        # Correct throughput: kernel overestimates bytes by multiplying accesses * stride.
        # Actual bytes touched per access is 8 (sizeof(uint64_t)). Therefore corrected_gbs = gbs_raw * (8 / stride_bytes).
        if 'gbs' in df.columns and 'stride_bytes' in df.columns:
            df.rename(columns={'gbs':'gbs_raw'}, inplace=True)
            df['gbs'] = df['gbs_raw'] * (8.0 / df['stride_bytes'].clip(lower=1))
        else:
            df['gbs_raw'] = df.get('gbs', np.nan)

        # Cache miss impact (requires cache-misses & cache-references columns now present post-pivot)
        if {'cache-misses','cache-references','gbs','size_bytes'}.issubset(df.columns):
            agg = df.groupby('size_bytes').agg({'cache-misses':'sum','cache-references':'sum','gbs':'mean'}).reset_index()
            # Avoid divide-by-zero
            agg = agg[agg['cache-references']>0]
            if not agg.empty:
                agg['miss_rate'] = agg['cache-misses']/agg['cache-references']
                fig, ax1 = plt.subplots(figsize=(6,4))
                ax2 = ax1.twinx()
                l1, = ax1.plot(agg['size_bytes']/1024, agg['miss_rate'], marker='o', color='tab:red', label='Cache Miss Rate')
                l2, = ax2.plot(agg['size_bytes']/1024, agg['gbs'], marker='s', color='tab:blue', label='Throughput (GB/s, corrected)')
                ax1.set_xscale('log')
                ax1.set_xlabel('Working Set (KB)')
                ax1.set_ylabel('Cache Miss Rate')
                ax2.set_ylabel('Throughput (GB/s)')
                ax1.legend([l1,l2],[l1.get_label(), l2.get_label()], loc='upper left')
                fig.tight_layout()
                fig.savefig(PLOTS_DIR/'cache_miss_impact.png', dpi=160)
        # TLB miss impact (only if dTLB-load-misses available)
        if {'dTLB-load-misses','gbs','size_bytes'}.issubset(df.columns):
            agg2 = df.groupby('size_bytes').agg({'dTLB-load-misses':'sum','gbs':'mean'}).reset_index()
            if not agg2.empty:
                fig, ax1 = plt.subplots(figsize=(6,4))
                ax2 = ax1.twinx()
                l1, = ax1.plot(agg2['size_bytes']/1024, agg2['dTLB-load-misses'], marker='o', color='tab:purple', label='dTLB-load-misses')
                l2, = ax2.plot(agg2['size_bytes']/1024, agg2['gbs'], marker='s', color='tab:green', label='Throughput (GB/s, corrected)')
                ax1.set_xscale('log')
                ax1.set_xlabel('Working Set (KB)')
                ax1.set_ylabel('dTLB-load-misses')
                ax2.set_ylabel('Throughput (GB/s)')
                ax1.set_title('TLB Miss Impact')
                ax1.legend([l1,l2],[l1.get_label(), l2.get_label()], loc='upper left')
                fig.tight_layout()
                fig.savefig(PLOTS_DIR/'tlb_miss_impact.png', dpi=160)
        # Pattern × stride heatmap (use large sizes > 16MB, single-thread only)
        if {'stride_bytes','pattern','gbs','threads','size_bytes'}.issubset(df.columns):
            subset = df[(df['threads']==1) & (df['size_bytes']>=16*1024*1024)]
            if not subset.empty:
                pivot = (subset
                         .groupby(['stride_bytes','pattern'])
                         .agg({'gbs':'mean','gbs_raw':'mean'})
                         .reset_index()
                         .pivot(index='stride_bytes', columns='pattern', values='gbs'))
                pivot = pivot.sort_index()
                fig, ax = plt.subplots(figsize=(5.4,4.4))
                im = ax.imshow(pivot.values, aspect='auto', cmap='viridis', vmin=pivot.values.min(), vmax=pivot.values.max())
                ax.set_yticks(range(len(pivot.index)))
                ax.set_yticklabels(pivot.index)
                ax.set_xticks(range(len(pivot.columns)))
                ax.set_xticklabels(pivot.columns)
                ax.set_xlabel('Pattern')
                ax.set_ylabel('Stride (bytes)')
                ax.set_title('Throughput vs Stride & Pattern (GB/s)')
                for i,s in enumerate(pivot.index):
                    for j,p in enumerate(pivot.columns):
                        val = pivot.loc[s,p]
                        ax.text(j, i, f"{val:.1f}", ha='center', va='center', fontsize=7,
                                color='white' if val > (pivot.values.min()+0.55*pivot.values.ptp()) else 'black')
                fig.colorbar(im, ax=ax, label='GB/s (higher better)')
                fig.tight_layout()
                fig.savefig(PLOTS_DIR/'stride_pattern_heatmap.png', dpi=160)
                # Additional line plot to emphasize stride monotonic trend per pattern
                line_df = subset.groupby(['stride_bytes','pattern']).agg({'gbs':'mean','gbs_raw':'mean'}).reset_index()
                fig2, axl = plt.subplots(figsize=(5.4,4.0))
                for pat in sorted(line_df['pattern'].unique()):
                    cur = line_df[line_df['pattern']==pat].sort_values('stride_bytes')
                    axl.plot(cur['stride_bytes'], cur['gbs'], marker='o', label=f"{pat} (corrected)")
                    axl.plot(cur['stride_bytes'], cur['gbs_raw'], marker='x', linestyle='--', alpha=0.4, label=f"{pat} raw")
                axl.set_xscale('log', base=2)
                axl.set_xlabel('Stride (bytes, log2)')
                axl.set_ylabel('Throughput (GB/s)')
                axl.set_title('Stride Impact on Throughput (Corrected vs Raw)')
                axl.legend()
                axl.grid(alpha=0.25, which='both')
                fig2.tight_layout()
                fig2.savefig(PLOTS_DIR/'stride_pattern_lines.png', dpi=160)
        # Huge page benefit comparison (if huge column present)
        if 'huge' in df.columns and df['huge'].nunique()>1:
            huge_subset = df[(df['threads']==1) & (df['pattern']=='seq')]
            if not huge_subset.empty:
                agg_cols = {'gbs':'mean'}
                if 'dTLB-load-misses' in df.columns:
                    agg_cols['dTLB-load-misses'] = 'sum'
                agg_h = huge_subset.groupby(['size_bytes','huge']).agg(agg_cols).reset_index()
                fig, ax1 = plt.subplots(figsize=(6,4))
                for flag,label,style in [(0,'Normal Pages','o-'),(1,'Huge Pages','s-')]:
                    line = agg_h[agg_h['huge']==flag]
                    if not line.empty:
                        ax1.plot(line['size_bytes']/1024/1024, line['gbs'], style, label=f'Throughput {label}')
                ax1.set_xscale('log')
                ax1.set_xlabel('Working Set (MB)')
                ax1.set_ylabel('Throughput (GB/s)')
                subtitle = 'Huge Page Impact (Seq, 1 Thread)'
                if 'dTLB-load-misses' in agg_h.columns:
                    subtitle += ''  # Placeholder if later we add secondary axis
                ax1.set_title(subtitle)
                ax1.legend(loc='best')
                fig.tight_layout()
                fig.savefig(PLOTS_DIR/'hugepage_benefit.png', dpi=160)
    # 1. Baseline latency markdown (from working_set + latencies)
    baseline_md = RESULTS_DIR/'baseline_latency_table.md'
    if (RESULTS_DIR/'working_set_latency.csv').exists():
            try:
                ws = parse_working_set(RESULTS_DIR/'working_set_latency.csv')
                # Clean numeric
                ws = ws[pd.to_numeric(ws['latency_ns'], errors='coerce').notna()]
                ws['latency_ns'] = ws['latency_ns'].astype(float)
                if not ws.empty:
                    sizes = ws['size_kb'].tolist(); lats = ws['latency_ns'].tolist()
                    boundaries = []
                    for i in range(1,len(ws)):
                        if lats[i] > 1.5*lats[i-1]:
                            boundaries.append(sizes[i])
                    regions = []
                    start = sizes[0]
                    b_ext = boundaries + [sizes[-1]]
                    for b in b_ext:
                        region_points = [l for s,l in zip(sizes,lats) if s>=start and s<=b]
                        if region_points:
                            regions.append((start,b, float(np.median(region_points))))
                        start = b
                    labels = ['L1','L2','L3','Memory']
                    with baseline_md.open('w') as f:
                        f.write('| Level | Size Range (KB) | Median Latency (ns) |\n|-------|-----------------|-------------------|\n')
                        for (idx,(a,b,med)) in enumerate(regions):
                            if idx>=len(labels): break
                            f.write(f"| {labels[idx]} | {int(a)}–{int(b)} | {med:.2f} |\n")
            except Exception as e:
                print(f"[warn] Skipping baseline latency table: {e}")
    # Additional MLC summary parsing
    mlc_md = RESULTS_DIR/'mlc_baselines.md'
    lat_file = RESULTS_DIR/'latencies.txt'
    if lat_file.exists():
        txt = lat_file.read_text().splitlines()
        idle = None
        for ln in txt:
            m = re.match(r'^\s*0\s+([0-9]+\.[0-9]+)', ln)
            if m:
                idle = float(m.group(1))
                break
        with mlc_md.open('w') as f:
            f.write('# MLC Baseline Summary\n')
            if idle:
                f.write(f'* Idle random access latency (ns): {idle}\n')
            else:
                f.write('* Idle latency not parsed.*\n')
            if (RESULTS_DIR/'loaded_latency.txt').exists():
                ll_df = parse_loaded_latency(RESULTS_DIR/'loaded_latency.txt')
                if not ll_df.empty:
                    f.write(f"* Min loaded latency: {ll_df['latency_ns'].min():.2f} ns\n")
                    f.write(f"* Max bandwidth observed: {ll_df['bandwidth_MB_s'].max():.2f} MB/s\n")
    print(f"Plots saved to {PLOTS_DIR}")
    print(f"Plots saved to {PLOTS_DIR}")

if __name__ == '__main__':
    main()
