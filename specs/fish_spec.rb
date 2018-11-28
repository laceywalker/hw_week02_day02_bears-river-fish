require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")
require_relative("../river")
require_relative("../bears")


class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Billy")
    @fish2 = Fish.new("TJ")
  end


  def test_can_create_fish
    assert_equal(Fish, @fish1.class)
  end

  def test_fish_name
    assert_equal("Billy", @fish1.name)
  end






end
