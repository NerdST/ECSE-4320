import re
def parse_fio_output(fio_output):
    results = {}
    current_test = None

    for line in fio_output.splitlines():
        match_rand = re.match(r'^\d+k_rand(read|write)_iops:', line)
        if match_rand:
            op_type = match_rand.group(1)
            current_test = 'rand' + op_type
            results[current_test] = {}
        else:
            match_seq = re.match(r'^\d+m_seq(read|write)_throughput:', line)
            if match_seq:
                op_type = match_seq.group(1)
                current_test = 'seq' + op_type
                results[current_test] = {}
            elif 'IOPS=' in line and current_test:
                iops_match = re.search(r'IOPS=(\d+)', line)
                if iops_match:
                    iops = iops_match.group(1)
                    results[current_test]['IOPS'] = int(iops)
            elif 'BW=' in line and current_test:
                bw = re.search(r'BW=(\d+)([KMG]?)iB/s', line)
                if bw:
                    size = int(bw.group(1))
                    unit = bw.group(2)
                    if unit == 'K':
                        size /= 1024
                    elif unit == 'M':
                        size /= (1024 ** 2)
                    elif unit == 'G':
                        size /= (1024 ** 3)
                    results[current_test]['Bandwidth_MBps'] = size
            elif 'lat (usec):' in line and current_test:
                latencies = re.findall(r'(\d+)=([\d.]+)%', line)
                results[current_test]['Latency_Distribution'] = {int(lat): float(percent) for lat, percent in latencies}

    return results

if __name__ == "__main__":
    fio_output = """
(.venv) sangeeth@sangeeth-ThinkPad-X1-Carbon-7th:/mnt/shared/sangeeth/Documents/RPI/Semester7/ECSE-4320/Project3$ sudo fio nvme_test.fio
4k_randread_iops: (g=0): rw=randread, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=128
4k_randwrite_iops: (g=1): rw=randwrite, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=128
4k_randread_latency: (g=2): rw=randread, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=1
1m_seqread_throughput: (g=3): rw=read, bs=(R) 1024KiB-1024KiB, (W) 1024KiB-1024KiB, (T) 1024KiB-1024KiB, ioengine=libaio, iodepth=64
1m_seqwrite_throughput: (g=4): rw=write, bs=(R) 1024KiB-1024KiB, (W) 1024KiB-1024KiB, (T) 1024KiB-1024KiB, ioengine=libaio, iodepth=64
fio-3.36
Starting 5 processes
Jobs: 1 (f=1): [_(4),W(1)][96.8%][w=913MiB/s][w=912 IOPS][eta 00m:06s]        
4k_randread_iops: (groupid=0, jobs=1): err= 0: pid=11160: Tue Sep 30 22:14:21 2025
  Description  : [Max Random Read IOPS]
  read: IOPS=281k, BW=1099MiB/s (1153MB/s)(26.4GiB/24548msec)
    slat (nsec): min=1057, max=1218.6M, avg=2390.83, stdev=463612.60
    clat (usec): min=104, max=1219.3k, avg=451.90, stdev=5225.96
     lat (usec): min=106, max=1219.3k, avg=454.29, stdev=5246.50
    clat percentiles (usec):
     |  1.00th=[  371],  5.00th=[  375], 10.00th=[  379], 20.00th=[  383],
     | 30.00th=[  388], 40.00th=[  392], 50.00th=[  400], 60.00th=[  420],
     | 70.00th=[  433], 80.00th=[  445], 90.00th=[  490], 95.00th=[  570],
     | 99.00th=[  832], 99.50th=[  881], 99.90th=[ 1090], 99.95th=[ 1336],
     | 99.99th=[ 2769]
   bw (  MiB/s): min=   61, max= 1274, per=100.00%, avg=1135.93, stdev=185.46, samples=47
   iops        : min=15870, max=326358, avg=290799.09, stdev=47476.83, samples=47
  lat (usec)   : 250=0.01%, 500=91.12%, 750=6.69%, 1000=2.02%
  lat (msec)   : 2=0.12%, 4=0.05%, 2000=0.01%
  cpu          : usr=30.31%, sys=69.33%, ctx=819, majf=0, minf=36
  IO depths    : 1=0.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=100.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.1%
     issued rwts: total=6908727,0,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=128
4k_randwrite_iops: (groupid=1, jobs=1): err= 0: pid=11327: Tue Sep 30 22:14:21 2025
  Description  : [Max Random Write IOPS]
  write: IOPS=220k, BW=858MiB/s (900MB/s)(27.1GiB/32273msec); 0 zone resets
    slat (nsec): min=1259, max=2126.2k, avg=2916.04, stdev=1729.83
    clat (usec): min=17, max=8825, avg=578.82, stdev=127.60
     lat (usec): min=21, max=8826, avg=581.74, stdev=127.77
    clat percentiles (usec):
     |  1.00th=[  469],  5.00th=[  482], 10.00th=[  494], 20.00th=[  510],
     | 30.00th=[  537], 40.00th=[  553], 50.00th=[  570], 60.00th=[  578],
     | 70.00th=[  594], 80.00th=[  611], 90.00th=[  652], 95.00th=[  717],
     | 99.00th=[  955], 99.50th=[ 1037], 99.90th=[ 2474], 99.95th=[ 2704],
     | 99.99th=[ 3851]
   bw (  KiB/s): min=668913, max=1047656, per=100.00%, avg=879435.36, stdev=81083.25, samples=64
   iops        : min=167228, max=261914, avg=219858.73, stdev=20270.86, samples=64
  lat (usec)   : 20=0.01%, 50=0.01%, 100=0.01%, 250=0.01%, 500=14.39%
  lat (usec)   : 750=81.56%, 1000=3.36%
  lat (msec)   : 2=0.56%, 4=0.13%, 10=0.01%
  cpu          : usr=36.66%, sys=62.68%, ctx=812, majf=0, minf=37
  IO depths    : 1=0.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=100.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.1%
     issued rwts: total=0,7091913,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=128
4k_randread_latency: (groupid=2, jobs=1): err= 0: pid=11569: Tue Sep 30 22:14:21 2025
  Description  : [Random Read Latency (QD=1)]
  read: IOPS=11.6k, BW=45.3MiB/s (47.5MB/s)(2716MiB/60001msec)
    slat (nsec): min=1637, max=402450, avg=7773.39, stdev=5121.78
    clat (nsec): min=1065, max=6146.4k, avg=76364.63, stdev=42156.04
     lat (usec): min=45, max=6157, avg=84.14, stdev=43.56
    clat percentiles (usec):
     |  1.00th=[   46],  5.00th=[   53], 10.00th=[   61], 20.00th=[   63],
     | 30.00th=[   67], 40.00th=[   74], 50.00th=[   77], 60.00th=[   79],
     | 70.00th=[   80], 80.00th=[   88], 90.00th=[   92], 95.00th=[   97],
     | 99.00th=[  133], 99.50th=[  161], 99.90th=[  198], 99.95th=[  338],
     | 99.99th=[ 2343]
   bw (  KiB/s): min=40713, max=55735, per=100.00%, avg=46399.96, stdev=3297.91, samples=120
   iops        : min=10178, max=13933, avg=11599.81, stdev=824.44, samples=120
  lat (usec)   : 2=0.01%, 4=0.01%, 10=0.01%, 20=0.01%, 50=3.56%
  lat (usec)   : 100=92.51%, 250=3.85%, 500=0.04%, 750=0.01%, 1000=0.01%
  lat (msec)   : 2=0.01%, 4=0.02%, 10=0.01%
  cpu          : usr=7.43%, sys=19.22%, ctx=695424, majf=0, minf=37
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued rwts: total=695336,0,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=1
1m_seqread_throughput: (groupid=3, jobs=1): err= 0: pid=11914: Tue Sep 30 22:14:21 2025
  Description  : [Max Sequential Read Throughput]
  read: IOPS=1749, BW=1754MiB/s (1840MB/s)(23.4GiB/13679msec)
    slat (usec): min=36, max=2806, avg=143.49, stdev=93.70
    clat (msec): min=13, max=111, avg=36.37, stdev=11.15
     lat (msec): min=14, max=112, avg=36.51, stdev=11.14
    clat percentiles (usec):
     |  1.00th=[16909],  5.00th=[21365], 10.00th=[25560], 20.00th=[27657],
     | 30.00th=[28967], 40.00th=[31327], 50.00th=[34341], 60.00th=[38011],
     | 70.00th=[40633], 80.00th=[44303], 90.00th=[51119], 95.00th=[57410],
     | 99.00th=[70779], 99.50th=[74974], 99.90th=[84411], 99.95th=[94897],
     | 99.99th=[98042]
   bw (  MiB/s): min= 1420, max= 1916, per=100.00%, avg=1756.87, stdev=107.03, samples=27
   iops        : min= 1420, max= 1916, avg=1756.67, stdev=106.94, samples=27
  lat (msec)   : 20=3.65%, 50=85.28%, 100=11.32%, 250=0.01%
  cpu          : usr=0.90%, sys=27.95%, ctx=20512, majf=0, minf=36
  IO depths    : 1=0.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=100.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.1%, >=64=0.0%
     issued rwts: total=23936,0,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=64
1m_seqwrite_throughput: (groupid=4, jobs=1): err= 0: pid=12056: Tue Sep 30 22:14:21 2025
  Description  : [Max Sequential Write Throughput]
  write: IOPS=1074, BW=1077MiB/s (1130MB/s)(26.0GiB/24723msec); 0 zone resets
    slat (usec): min=60, max=1901, avg=239.34, stdev=121.94
    clat (msec): min=23, max=198, avg=59.23, stdev=19.22
     lat (msec): min=23, max=198, avg=59.47, stdev=19.21
    clat percentiles (msec):
     |  1.00th=[   29],  5.00th=[   34], 10.00th=[   40], 20.00th=[   50],
     | 30.00th=[   52], 40.00th=[   53], 50.00th=[   55], 60.00th=[   57],
     | 70.00th=[   62], 80.00th=[   70], 90.00th=[   85], 95.00th=[  100],
     | 99.00th=[  129], 99.50th=[  138], 99.90th=[  155], 99.95th=[  165],
     | 99.99th=[  194]
   bw (  MiB/s): min=  640, max= 1246, per=99.87%, avg=1075.83, stdev=192.03, samples=49
   iops        : min=  640, max= 1246, avg=1075.67, stdev=192.03, samples=49
  lat (msec)   : 50=22.29%, 100=73.25%, 250=4.69%
  cpu          : usr=8.34%, sys=20.89%, ctx=24110, majf=0, minf=36
  IO depths    : 1=0.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=100.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.1%, >=64=0.0%
     issued rwts: total=0,26570,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=64

Run status group 0 (all jobs):
   READ: bw=1099MiB/s (1153MB/s), 1099MiB/s-1099MiB/s (1153MB/s-1153MB/s), io=26.4GiB (28.3GB), run=24548-24548msec

Run status group 1 (all jobs):
  WRITE: bw=858MiB/s (900MB/s), 858MiB/s-858MiB/s (900MB/s-900MB/s), io=27.1GiB (29.0GB), run=32273-32273msec

Run status group 2 (all jobs):
   READ: bw=45.3MiB/s (47.5MB/s), 45.3MiB/s-45.3MiB/s (47.5MB/s-47.5MB/s), io=2716MiB (2848MB), run=60001-60001msec

Run status group 3 (all jobs):
   READ: bw=1754MiB/s (1840MB/s), 1754MiB/s-1754MiB/s (1840MB/s-1840MB/s), io=23.4GiB (25.2GB), run=13679-13679msec

Run status group 4 (all jobs):
  WRITE: bw=1077MiB/s (1130MB/s), 1077MiB/s-1077MiB/s (1130MB/s-1130MB/s), io=26.0GiB (27.9GB), run=24723-24723msec

Disk stats (read/write):
  nvme0n1: ios=9404684/8649319, sectors=140252848/133679360, merge=0/808, ticks=8968386/15020634, in_queue=23989712, util=85.19%
"""

    parsed_results = parse_fio_output(fio_output)
    for test, metrics in parsed_results.items():
        print(f"Test: {test}")
        for metric, value in metrics.items():
            print(f"  {metric}: {value}")
        print()
    # The parsed_results dictionary now contains the extracted metrics
    print("Disk stats (read/write):")
    disk_stats = re.search(r'Disk stats \(read/write\):\n(.*)', fio_output, re.DOTALL)
    if disk_stats:
        print(disk_stats.group(0))