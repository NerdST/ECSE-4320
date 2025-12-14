from dataclasses import dataclass
from typing import Literal

TierName = Literal["L3Cache", "DRAM", "CXL", "SSD", "HDD"]

@dataclass
class ObjectStats:
    bytes_size: int
    access_count: int
    last_latency_ns: int
    compression_ratio_hint: float = 1.0

class PlacementPolicy:
    def choose_tier(self, stats: ObjectStats) -> TierName:
        raise NotImplementedError

class HotWarmColdPolicy(PlacementPolicy):
    def __init__(self, hot_threshold: int = 100, warm_threshold: int = 20):
        self.hot_threshold = hot_threshold
        self.warm_threshold = warm_threshold
    def choose_tier(self, stats: ObjectStats) -> TierName:
        if stats.access_count >= self.hot_threshold:
            return "DRAM"
        if stats.access_count >= self.warm_threshold:
            # Prefer CXL when compression ratio is favorable
            return "CXL" if stats.compression_ratio_hint <= 0.7 else "DRAM"
        # Cold
        return "SSD" if stats.bytes_size < (4 * 1024 * 1024) else "HDD"
