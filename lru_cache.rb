require './lib/lru_cache'

lru = LRUCache.new
lru.put("a","dataA")
lru.put("b","dataB")
lru.put("c","dataC")
p lru.get("a")
p lru.get("b")
p lru.get("c")

lru = LRUCache.new
lru.put("a","dataA")
lru.put("b","dataB")
p lru.get("a")
lru.put("c","dataC")
p lru.get("b")


