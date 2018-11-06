require './game'
require './player'
require './question'
require './turn'

player_1 = Player.new('Player 1')
player_2 = Player.new('Player 2')
q = Question.new
player_1_turn = Turn.new(player_1, q)
player_2_turn = Turn.new(player_2, q)


game_1 = Game.new(player_1, player_2)

p player_1

# puts player_1_turn.ask_question == true

# puts player_2_turn.ask_question == true

# puts player_1_turn.take_turn

puts player_1.lives

while(player_1.lives > 0 && player_2.lives > 0)
  puts "-----NEW TURN-----"
  if (player_1.lives > 0 && player_2.lives)
    puts "Player 1 Turn"
    player_1_turn.take_turn
    puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
  end

  if (player_1.lives > 0 && player_2.lives)
    puts "Player 2 Turn"
    player_2_turn.take_turn
    puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
  end

  if player_1.lives == 0
    puts "#{player_2.player} wins! Score: #{player_2.lives}/#{player_1.lives}"
  end

  if player_2.lives == 0
    puts "#{player_1.player} wins1 Score: #{player_1.lives}/#{player_2.lives}"
  end
end
puts "-----GAME OVER-----"

