import time
import threading
from dataclasses import dataclass

@dataclass
class TierConfig:
    name: str
    capacity_bytes: int
    base_latency_ns: int
    bandwidth_bytes_per_s: int
    compression_ratio: float = 1.0
    decompress_latency_ns: int = 0
    compress_latency_ns: int = 0

class Tier:
    def __init__(self, cfg: TierConfig):
        self.cfg = cfg
        self._lock = threading.Lock()
        self._used = 0

    def can_place(self, bytes_needed: int) -> bool:
        if self.cfg.compression_ratio < 1.0:
            footprint = int(bytes_needed * self.cfg.compression_ratio)
        else:
            footprint = bytes_needed
        return self._used + footprint <= self.cfg.capacity_bytes

    def place(self, bytes_needed: int) -> None:
        with self._lock:
            if not self.can_place(bytes_needed):
                raise MemoryError(f"Tier {self.cfg.name} out of capacity")
            footprint = int(bytes_needed * (self.cfg.compression_ratio if self.cfg.compression_ratio < 1.0 else 1.0))
            self._used += footprint

    def remove(self, bytes_used: int) -> None:
        with self._lock:
            footprint = int(bytes_used * (self.cfg.compression_ratio if self.cfg.compression_ratio < 1.0 else 1.0))
            self._used = max(0, self._used - footprint)

    def access(self, bytes_count: int, write: bool = False) -> None:
        # Simulate latency + bandwidth; include (de)compression for compressed tiers
        total_ns = self.cfg.base_latency_ns
        if self.cfg.compression_ratio < 1.0:
            total_ns += self.cfg.decompress_latency_ns
        elif self.cfg.compression_ratio > 1.0:
            total_ns += self.cfg.compress_latency_ns
        # bandwidth component
        if self.cfg.bandwidth_bytes_per_s > 0:
            bw_ns = (bytes_count / self.cfg.bandwidth_bytes_per_s) * 1e9
            total_ns += int(bw_ns)
        # Sleep to emulate
        time.sleep(total_ns / 1e9)


def default_tiers():
    # Approximate latencies in nanoseconds; tune as needed
    return {
        "L3Cache": Tier(TierConfig("L3Cache", capacity_bytes=256 * 1024 * 1024, base_latency_ns=30, bandwidth_bytes_per_s=200_000_000_000)),
        "DRAM": Tier(TierConfig("DRAM", capacity_bytes=16 * 1024 ** 3, base_latency_ns=80, bandwidth_bytes_per_s=50_000_000_000)),
        # CXL compressed memory: smaller footprint, extra (de)compression latency
        "CXL": Tier(TierConfig("CXL", capacity_bytes=64 * 1024 ** 3, base_latency_ns=200, bandwidth_bytes_per_s=25_000_000_000, compression_ratio=0.5, decompress_latency_ns=500, compress_latency_ns=800)),
        "SSD": Tier(TierConfig("SSD", capacity_bytes=1 * 1024 ** 4, base_latency_ns=100_000, bandwidth_bytes_per_s=2_000_000_000)),
        "HDD": Tier(TierConfig("HDD", capacity_bytes=8 * 1024 ** 4, base_latency_ns=3_000_000, bandwidth_bytes_per_s=200_000_000)),
    }
