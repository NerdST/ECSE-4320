import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path
import glob
import sys

# Determine directory containing this script and look for CSVs beside it
SCRIPT_DIR = Path(__file__).parent
CSV_GLOB = str(SCRIPT_DIR / 'dot_*.csv')  # adjust pattern if needed
OUTPUT_DIR = SCRIPT_DIR / 'graphs'
OUTPUT_DIR.mkdir(exist_ok=True)

print(f"Scanning for CSV files with pattern: {CSV_GLOB}")
files = glob.glob(CSV_GLOB)
if not files:
    print("No CSV files found. Adjust the glob pattern if necessary.")
    sys.exit(1)

# Expected columns based on sample: datatype,n,stride,aligned,time_s,gflops
REQUIRED_COLS = {'datatype', 'n', 'stride', 'aligned', 'time_s', 'gflops'}

for filename in files:
    path = Path(filename)
    try:
        df = pd.read_csv(path)
    except Exception as e:
        print(f"Failed reading {path.name}: {e}")
        continue

    missing = REQUIRED_COLS - set(df.columns)
    if missing:
        print(f"Skipping {path.name}: missing columns {missing}")
        continue

    # Clean data: drop inf/NaN for gflops and n
    df = df.replace([float('inf'), float('-inf')], pd.NA).dropna(subset=['gflops', 'n'])
    if df.empty:
        print(f"All rows invalid in {path.name}, skipping.")
        continue

    # Sort by n for plotting lines that connect increasing sizes
    df = df.sort_values('n')

    plt.figure(figsize=(6,4))
    # Use scatter to show raw samples (multiple measurements per n)
    plt.scatter(df['n'], df['gflops'], s=25, alpha=0.7, edgecolor='k', linewidth=0.3)
    plt.xscale('log', base=2)
    plt.xlabel('n (vector length, log2 scale)')
    plt.ylabel('gflops (raw samples)')
    plt.title(f'{path.stem}: n vs gflops')
    plt.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.6)

    out_file = OUTPUT_DIR / f"{path.stem}_raw.png"
    plt.tight_layout()
    plt.savefig(out_file, dpi=150)
    plt.close()
    print(f"Saved {out_file}")

print("Done.")