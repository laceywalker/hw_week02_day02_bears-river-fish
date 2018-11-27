class River

  def initialize(river_name, fish_in_river)
    @river_name = river_name
    @fish_in_river = fish_in_river
  end

  def check_river_name
    return @river_name
  end

  def count_fish_quantity
    return @fish_in_river.count
  end

  def check_fish_name
    return @fish_in_river[0]
  end


end
