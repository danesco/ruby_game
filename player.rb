class Player

  attr_reader :lives, :player
  def initialize(name)
    @player = name
    @lives = 3
  end

  def decrement_life
    @lives -= 1
  end
end