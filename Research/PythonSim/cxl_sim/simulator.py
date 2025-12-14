import time
import threading
import random
from typing import Callable, List
from .tiers import default_tiers
from .policies import HotWarmColdPolicy, ObjectStats
from .datastructures import TieredHashMap
from .metrics import Metrics

class Simulator:
    def __init__(self):
        self.tiers = default_tiers()
        self.policy = HotWarmColdPolicy()
        self.metrics = Metrics()
        self.ds = TieredHashMap(self.tiers, self.policy)
        self._stop = threading.Event()
        self._migrator = threading.Thread(target=self._background_migration, daemon=True)
        self.migration_scan_interval = 0.1  # seconds
    
    def start(self):
        self._migrator.start()
    
    def stop(self):
        self._stop.set()
        self._migrator.join(timeout=2)
    
    def _background_migration(self):
        """Periodically scan and migrate objects based on access patterns."""
        while not self._stop.is_set():
            time.sleep(self.migration_scan_interval)
            # Scan metadata and trigger migrations
            migration_start = time.time_ns()
            migrated = 0
            for key, stats in list(self.ds._meta.items()):
                if key in self.ds._map:
                    current_tier, value = self.ds._map[key]
                    desired_tier = self.policy.choose_tier(stats)
                    if current_tier != desired_tier:
                        # Perform migration
                        try:
                            old_tier = self.tiers[current_tier]
                            new_tier = self.tiers[desired_tier]
                            old_tier.remove(len(value))
                            new_tier.place(len(value))
                            self.ds._map[key] = (desired_tier, value)
                            migrated += 1
                        except MemoryError:
                            pass  # Skip if target tier is full
            if migrated > 0:
                migration_end = time.time_ns()
                self.metrics.record_migration_overhead(migration_end - migration_start)
    
    def workload_sequential(self, n_ops: int = 1000, payload_size: int = 1024, read_ratio: float = 0.5):
        """Sequential key access pattern: 0, 1, 2, ..., n_ops-1"""
        for i in range(n_ops):
            key = f"k{i}"
            if random.random() < read_ratio and i > 0:
                # Read from existing key
                s = time.time_ns()
                _ = self.ds.get(f"k{random.randint(0, i-1)}")
                e = time.time_ns()
                self.metrics.record("get", s, e)
            else:
                # Write
                value = bytes(payload_size)
                s = time.time_ns()
                self.ds.put(key, value)
                e = time.time_ns()
                self.metrics.record("put", s, e)
    
    def workload_random(self, n_ops: int = 1000, payload_size: int = 1024, key_space: int = 100, read_ratio: float = 0.5):
        """Random access pattern with fixed key space."""
        for i in range(n_ops):
            key = f"k{random.randint(0, key_space - 1)}"
            if random.random() < read_ratio:
                s = time.time_ns()
                _ = self.ds.get(key)
                e = time.time_ns()
                self.metrics.record("get", s, e)
            else:
                value = bytes(payload_size)
                s = time.time_ns()
                self.ds.put(key, value)
                e = time.time_ns()
                self.metrics.record("put", s, e)
    
    def workload_hotspot(self, n_ops: int = 1000, payload_size: int = 1024, hotspot_fraction: float = 0.2, read_ratio: float = 0.8):
        """Hotspot pattern: 20% of keys get 80% of accesses."""
        total_keys = int(100 / hotspot_fraction)
        hotspot_keys = int(total_keys * hotspot_fraction)
        
        for i in range(n_ops):
            if random.random() < hotspot_fraction:
                # Access hotspot
                key = f"k{random.randint(0, hotspot_keys - 1)}"
            else:
                # Access cold
                key = f"k{random.randint(hotspot_keys, total_keys - 1)}"
            
            if random.random() < read_ratio:
                s = time.time_ns()
                _ = self.ds.get(key)
                e = time.time_ns()
                self.metrics.record("get", s, e)
            else:
                value = bytes(payload_size)
                s = time.time_ns()
                self.ds.put(key, value)
                e = time.time_ns()
                self.metrics.record("put", s, e)
    
    def workload_tiered_baseline(self, n_ops: int = 1000, payload_size: int = 1024):
        """Baseline: uniform round-robin, simulating single-tier DRAM-only system."""
        # Force all objects to DRAM
        original_policy = self.policy
        self.ds._policy = HotWarmColdPolicy(hot_threshold=0, warm_threshold=0)  # All go to DRAM
        
        for i in range(n_ops):
            key = f"bk{i % 100}"
            if random.random() < 0.5:
                s = time.time_ns()
                _ = self.ds.get(key)
                e = time.time_ns()
                self.metrics.record("get_baseline", s, e)
            else:
                value = bytes(payload_size)
                s = time.time_ns()
                self.ds.put(key, value)
                e = time.time_ns()
                self.metrics.record("put_baseline", s, e)
        
        self.ds._policy = original_policy
    
    def workload(self, n_ops: int = 1000, payload_size: int = 1024):
        """Legacy workload: random access with 50/50 read-write."""
        self.workload_random(n_ops, payload_size, key_space=100, read_ratio=0.5)
    
    def get_summary(self):
        """Return current metrics summary."""
        return self.metrics.summary()
