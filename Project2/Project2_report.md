# ECSE-4320 Project 2 Lab Report

My CPU Specs:
- Intel i5-8365U (8) @ 4.100GHz
  - 32KB L1 cache per core
  - 256KB L2 cache per core
  - 6MB L3 cache (shared)
- 16GB RAM
- Ubuntu 22.04.2 LTS

When running mlc without any arguments, the results were as follows:
```
sangeeth@sangeeth-ThinkPad-X1-Carbon-7th:/mnt/shared/sangeeth/Documents/RPI/Semester7/ECSE-4320/Project2$ ./mlc
Intel(R) Memory Latency Checker - v3.11b
*** Unable to modify prefetchers (try executing 'modprobe msr')
*** So, enabling random access for latency measurements
Measuring idle latencies for random access (in ns)...
                Numa node
Numa node            0
       0         163.3

Measuring Peak Injection Memory Bandwidths for the system
Bandwidths are in MB/sec (1 MB/sec = 1,000,000 Bytes/sec)
Using all the threads from each core if Hyper-threading is enabled
Using traffic with the following read-write ratios
ALL Reads        :       8903.0
3:1 Reads-Writes :      11618.4
2:1 Reads-Writes :      14225.4
1:1 Reads-Writes :      23570.2
Stream-triad like:      12697.6

Measuring Memory Bandwidths between nodes within system 
Bandwidths are in MB/sec (1 MB/sec = 1,000,000 Bytes/sec)
Using all the threads from each core if Hyper-threading is enabled
Using Read-only traffic type
                Numa node
Numa node            0
       0         9814.9

Measuring Loaded Latencies for the system
Using all the threads from each core if Hyper-threading is enabled
Using Read-only traffic type
Inject  Latency Bandwidth
Delay   (ns)    MB/sec
==========================
 00000  417.73     8548.7
 00002  303.33     9972.5
 00008  406.03     8801.1
 00015  335.60    10139.0
 00050  130.46    19080.0
 00100  103.84    11433.6
 00200   99.17     7103.1
 00300   97.24     5140.9
 00400   96.79     4088.4
 00500   96.17     3439.9
 00700  106.46     2647.7
 01000  110.88     2004.0
 01300  110.57     1694.4
 01700  110.58     1420.4
 02500  110.17     1157.5
 03500  110.64      992.6
 05000  110.13      872.2
 09000  109.75      747.5
 20000  109.82      656.0

Measuring cache-to-cache transfer latency (in ns)...
Local Socket L2->L2 HIT  latency        45.3
Local Socket L2->L2 HITM latency        47.7
```

This didn't give us the cache latencies as expected, so I ran the command with `-C` to disable hardware prefetchers:
```

```

## perf

Unfortunately perf was bugged for my version of Ubuntu (22.04.2 LTS), but I was able to find a workaround by creating a symlink for it. This allowed me to run `perf stat ls`:
```
sangeeth@sangeeth-ThinkPad-X1-Carbon-7th:/usr/lib/linux-tools/6.8.0-84-generic$ sudo ./perf_link stat ls
acpidbg		 hv_kvp_daemon	   lsvmbus    turbostat
bpftool		 hv_vss_daemon	   perf       usbip
cpupower	 lib		   perf_link  usbipd
hv_fcopy_daemon  libperf-jvmti.so  rtla       x86_energy_perf_policy

 Performance counter stats for 'ls':

              2.34 msec task-clock                       #    0.659 CPUs utilized             
                 0      context-switches                 #    0.000 /sec                      
                 0      cpu-migrations                   #    0.000 /sec                      
                96      page-faults                      #   41.057 K/sec                     
         2,080,140      cycles                           #    0.890 GHz                       
         2,103,400      instructions                     #    1.01  insn per cycle            
           398,438      branches                         #  170.401 M/sec                     
            13,135      branch-misses                    #    3.30% of all branches           

       0.003546410 seconds time elapsed

       0.000733000 seconds user
       0.002934000 seconds sys
```

My branch miss rate was around 3.3%, which seems reasonable. Ideally it would be close to 0% as possible, but it varies per computer.