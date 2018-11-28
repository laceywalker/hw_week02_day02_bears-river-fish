require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")


class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Billy")
    @fish2 = Fish.new("TJ")
    @river1 = River.new("Amazon", [@fish1, @fish2]) #different object than below (2 different rivers)
    @river2 = River.new("Ganges", ["John", "Charles", "Gary"])

  end

  def test_can_create_river
    assert_equal(River, @river1.class)
  end

  def test_check_river_name
    assert_equal("Amazon", @river1.river_name)    #without attr_reader @river.river_name
  end

  def test_count_fish_quanitity
    assert_equal(3, @river2.fish_in_river.count)     # @fish_in_river.count_fish_quantity
  end

  def test_check_fish_name
    assert_equal("John", @river2.check_fish_name("John"))   #@fish_in_river.check_fish_name
  end





end
