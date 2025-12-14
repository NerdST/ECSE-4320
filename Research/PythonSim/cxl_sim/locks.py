import time
import threading
from dataclasses import dataclass

@dataclass
class LockProfile:
    spin_ns: int = 1000
    backoff_ns: int = 10000

class TierAwareLock:
    def __init__(self, tier_name: str, profile: LockProfile = LockProfile()):
        self._lock = threading.Lock()
        self._owner = None
        self.tier_name = tier_name
        self.profile = profile
    def acquire(self):
        # Simple adaptive backoff: slower tiers back off more
        base = {
            "L3Cache": 0.5,
            "DRAM": 1.0,
            "CXL": 2.0,
            "SSD": 5.0,
            "HDD": 10.0,
        }.get(self.tier_name, 1.0)
        while True:
            if self._lock.acquire(blocking=False):
                self._owner = threading.get_ident()
                return
            # spin then backoff
            time.sleep(self.profile.spin_ns / 1e9)
            time.sleep((self.profile.backoff_ns * base) / 1e9)
    def release(self):
        if self._owner == threading.get_ident():
            self._owner = None
            self._lock.release()
