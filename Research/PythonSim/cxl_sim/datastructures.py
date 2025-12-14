import threading
from typing import Any, Optional
from .locks import TierAwareLock
from .policies import PlacementPolicy, ObjectStats

class TieredHashMap:
    def __init__(self, tiers, policy: PlacementPolicy):
        self._tiers = tiers
        self._policy = policy
        self._map = {}
        self._meta = {}
        self._global_lock = threading.Lock()
    def put(self, key: Any, value: bytes):
        size = len(value)
        stats = self._meta.get(key, ObjectStats(bytes_size=size, access_count=0, last_latency_ns=0))
        stats.bytes_size = size
        tier_name = self._policy.choose_tier(stats)
        lock = TierAwareLock(tier_name)
        lock.acquire()
        try:
            tier = self._tiers[tier_name]
            tier.place(size)
            tier.access(size, write=True)
            self._map[key] = (tier_name, value)
            stats.access_count += 1
            self._meta[key] = stats
        finally:
            lock.release()
    def get(self, key: Any) -> Optional[bytes]:
        tup = self._map.get(key)
        if not tup:
            return None
        tier_name, value = tup
        lock = TierAwareLock(tier_name)
        lock.acquire()
        try:
            tier = self._tiers[tier_name]
            tier.access(len(value), write=False)
            stats = self._meta[key]
            stats.access_count += 1
            self._meta[key] = stats
            return value
        finally:
            lock.release()

# Minimal B-tree stub using the same tier-aware locking idea (for demo)
class TieredBTree:
    def __init__(self, tiers, policy: PlacementPolicy, order: int = 8):
        self._tiers = tiers
        self._policy = policy
        self.order = order
        self._root = []  # simplified
        self._meta = {}
        self._global_lock = threading.Lock()
    def insert(self, key: Any, value: bytes):
        size = len(value)
        stats = self._meta.get(key, ObjectStats(bytes_size=size, access_count=0, last_latency_ns=0))
        stats.bytes_size = size
        tier_name = self._policy.choose_tier(stats)
        lock = TierAwareLock(tier_name)
        lock.acquire()
        try:
            tier = self._tiers[tier_name]
            tier.place(size)
            tier.access(size, write=True)
            self._root.append((key, tier_name, value))
            stats.access_count += 1
            self._meta[key] = stats
        finally:
            lock.release()
    def search(self, key: Any) -> Optional[bytes]:
        for k, tier_name, value in self._root:
            if k == key:
                lock = TierAwareLock(tier_name)
                lock.acquire()
                try:
                    tier = self._tiers[tier_name]
                    tier.access(len(value), write=False)
                    stats = self._meta[key]
                    stats.access_count += 1
                    self._meta[key] = stats
                    return value
                finally:
                    lock.release()
        return None
