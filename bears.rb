class Bears

  attr_reader :name, :type, :stomach_contents

  def initialize(name, type, stomach_contents)
    @name = name
    @type = type
    @stomach_contents = stomach_contents

  end



  def bear_eat_fish(river)
      eat_me = river.fish_in_river.pop  #I don't understand why fishes_in_the_river which is in an istance variable does not need an @ sign and how it can be used in this way
      @stomach_contents << eat_me
  end














end
