class LRUCache


  def initialize(size=2)
    @lru_cache = {}
    @size = size
  end

  def put(key, value)
    @lru_cache.delete(@lru_cache.keys[0]) if @lru_cache.size >= @size
    @lru_cache[key] = value
  end

  def get(key)
    tmp = @lru_cache[key]
    @lru_cache.delete(@lru_cache.keys[0])
    @lru_cache[key] = tmp

    return @lru_cache[key]
  end

end



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


