class Map
  def initialize
    @map = []
  end
  
  def assign key, value
    found = nil
    
    @map.each_with_index do |pair, idx|
      found = idx if pair.first == key
    end
    
    if found
      @map[found].last = value
    else
      @map << [key, value]
    end
    @map
  end
  
  def lookup key
    @map.each do |pair|
      return pair.last if pair.first == key
    end
    nil
  end
  
  def remove key
    @map.delete_if do |pair|
      pair.first == key
    end
  end
  
  def show
    @map
  end
end