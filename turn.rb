require './question'
require './player'

class Turn

  def initialize(player, question)
    @player = player
    @question = question
  end

  def ask_question
    @question.ask_question
  end

  def decrement_life
    @player.decrement_life
  end

  def take_turn
    if ask_question == true
      puts "good job!"
    else
      puts "wrong!"
      decrement_life
    end
  end
end