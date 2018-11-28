require("minitest/autorun")
require("minitest/rg")

require_relative("../bears")
require_relative("../river")
require_relative("../fish")


class BearsTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Billy")
    @fish2 = Fish.new("TJ")
    @river1 = River.new("Amazon", [@fish1, @fish2]) #different object than below (2 different rivers)
    @river2 = River.new("Ganges", ["John", "Charles", "Gary"])
    @bear = Bears.new("Ronny", "grizzly", []) #remember - this is ONLY ONE SPECIFIC BEAR
  end

  def test_can_create_bears
    assert_equal(Bears, @bear.class)
  end

  def test_check_bear_name
    assert_equal("Ronny", @bear.name)
  end

  def test_check_bear_type
    assert_equal("grizzly", @bear.type)
  end

  def test_check_bear_stomach_contents
    assert_equal(0, @bear.stomach_contents.count)
  end

  def test_bear_eat_fish                #this was very difficult, not the logic  but the structure of the test and the method
    @bear.bear_eat_fish(@river1)    #don't fully understaand why river is passed in here
    assert_equal(1, @bear.stomach_contents.count)
  end




end
