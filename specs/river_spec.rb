require("minitest/autorun")
require("minitest/rg")

require_relative("../river")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", ["TJ", "Pete", "Ramon"])
    @fish = River.new("Amazon", ["TJ", "Pete", "Ramon"])
  end

  def test_can_create_river
    assert_equal(River, @river.class)
  end

  def test_check_river_name
    assert_equal("Amazon", @river.check_river_name)
  end

  def test_count_fish_quanitity
    assert_equal(3, @fish.count_fish_quantity)
  end

  def test_check_fish_name
    assert_equal("TJ", @fish.check_fish_name)
  end










end
