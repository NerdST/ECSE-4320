| job   |   qd |   iops | avg_lat (µs) | p50 (µs) | p95 (µs) | p99 (µs) | p99.9 (µs) | LittleLaw_Q (≈ λ·W) | Util vs QD (%) |
| :---- | ---: | -----: | -----------: | -------: | -------: | -------: | ---------: | ------------------: | -------------: |
| qd_2  |    2 |  26200 |        70.45 |       68 |       97 |      126 |        326 |                1.85 |          92.3% |
| qd_16 |   16 | 131000 |       116.42 |      102 |      210 |      253 |        371 |               15.25 |          95.3% |

Little's Law:  L = λ * W
* λ (lambda) = IOPS (operations per second)
* W = average latency in seconds (avg_lat_us / 1e6)
* LittleLaw_Q is the implied average number of outstanding I/O requests actually resident in the device/queue.

Observations:
* QD=2 run achieves an effective concurrency of ~1.85 (≈92% of target), indicating near full utilization; the shortfall is expected due to host scheduling gaps and integer QD ceiling.
* QD=16 run reaches ~15.25 (≈95%), still scaling efficiently; no clear knee yet—expect knee to emerge when incremental IOPS per added QD begins to drop sharply and utilization plateaus near 100% while tail (p99/p99.9) inflates.
* Tail growth from QD2→QD16: p99 increases 126→253 µs (~2×) while IOPS grows 5×; a favorable trade so far.

Next Data Needed:
* Additional points (QD=32, 64, 128) to (a) locate knee, (b) show onset of steeper p99.9 inflation, and (c) validate Little's Law convergence (implied concurrency ~ issued QD).
* Mid-QD mixed read/write entries (if required by spec) for comparative tail behavior.