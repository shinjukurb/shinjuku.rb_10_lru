class LRUCache
  attr_reader :capacity

  def initialize(capacity=2)
    @lru_cache = {}
    @capacity = capacity
  end

  def put(key, value)
    @lru_cache.delete(@lru_cache.keys[0]) if @lru_cache.size >= capacity
    @lru_cache[key] = value
  end

  def get(key)
    tmp = @lru_cache[key]
    @lru_cache.delete(@lru_cache.keys[0])
    @lru_cache[key] = tmp

    return @lru_cache[key]
  end

end
