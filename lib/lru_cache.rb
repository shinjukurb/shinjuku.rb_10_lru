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
