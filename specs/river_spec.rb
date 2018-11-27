require("minitest/autorun")
require("minitest/rg")

require_relative("../river")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", ["TJ", "Pete", "Ramon"]) #different object than below (2 different rivers)
    @river_fish = River.new("Ganges", ["John", "Charles", "Gary"])
  end

  def test_can_create_river
    assert_equal(River, @river.class)
  end

  def test_check_river_name
    assert_equal("Amazon", @river.river_name)    #without attr_reader @river.river_name
  end

  def test_count_fish_quanitity
    assert_equal(3, @river_fish.fish_in_river.count)     # @fish_in_river.count_fish_quantity
  end

  def test_check_fish_name
    assert_equal("John", @river_fish.fish_in_river[0])   #@fish_in_river.check_fish_name
  end





end
