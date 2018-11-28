class River

    attr_reader :river_name, :fish_in_river

  def initialize(river_name, fish_in_river)
    @river_name = river_name
    @fish_in_river = fish_in_river
  end



#if don't use attr_reader, need to write out these functions--->

  def check_river_name
    return @river_name
  end

  def count_fish_quantity
    return @fish_in_river.count
  end

  def check_fish_name(name)
    for fish in @fish_in_river
      if fish == name
      return fish
      end
    end
  end



end
