import time
from collections import defaultdict
import statistics

class Metrics:
    def __init__(self):
        self.latencies_ns = defaultdict(list)
        self.counts = defaultdict(int)
        self.tier_utilization = defaultdict(int)
        self.compression_savings = defaultdict(float)
        self.cost_per_operation = defaultdict(float)
        self.migration_overhead_ns = 0
    
    def record(self, name: str, start_ns: int, end_ns: int):
        self.latencies_ns[name].append(end_ns - start_ns)
        self.counts[name] += 1
    
    def record_tier_access(self, tier_name: str, bytes_accessed: int):
        self.tier_utilization[tier_name] += bytes_accessed
    
    def record_compression_savings(self, tier_name: str, original_bytes: int, compressed_bytes: int):
        self.compression_savings[tier_name] += (original_bytes - compressed_bytes)
    
    def record_migration_overhead(self, ns: int):
        self.migration_overhead_ns += ns
    
    def percentile(self, lst, p):
        """Calculate p-th percentile (0-100)."""
        if not lst:
            return 0
        arr = sorted(lst)
        idx = int((p / 100.0) * (len(arr) - 1))
        return arr[idx]
    
    def summary(self):
        result = {}
        for op_name, latencies in self.latencies_ns.items():
            if latencies:
                result[op_name] = {
                    "count": self.counts[op_name],
                    "mean_ns": int(statistics.mean(latencies)),
                    "median_ns": int(statistics.median(latencies)),
                    "p95_ns": int(self.percentile(latencies, 95)),
                    "p99_ns": int(self.percentile(latencies, 99)),
                    "max_ns": max(latencies),
                    "min_ns": min(latencies),
                }
        
        result["tier_utilization_bytes"] = dict(self.tier_utilization)
        result["compression_savings_bytes"] = dict(self.compression_savings)
        result["migration_overhead_ns"] = self.migration_overhead_ns
        return result
