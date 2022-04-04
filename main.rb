require_relative './player.rb'
require_relative './question.rb'
require_relative './game_turn.rb'

# requires all the files
# I/O logic 

print "Enter your name Player 1: "
player_one_name = gets.chomp.to_s
print "Enter your name Player 2: "
player_two_name = gets.chomp.to_s

player1 = Player.new(player_one_name)
player2 = Player.new(player_two_name)

game = Game.new(player1, player2)

while game.players[0].life > 0 and game.players[1].life > 0 do
  # generate question and answer
  puts "--- NEW TURN ---"
  question = Question.new
  print "#{game.current_player.name}: #{question.generate_question}"
  answer = question.answer

  # input logic from player
  input = gets.chomp.to_i

  # remove life if answer is wrong 
  if (input != answer && game.current_player.life != 0)
    puts "Computer says: That is totally wrong ❌"
    game.remove_life
  else
    puts "Computer says: You totally got it dude! ✅"
  end

  # show score 
  if (game.current_player.life != 0)
  game.show_life
  end

  # change turn
  game.change_player
end


# ask question 
# input logic 
# if the answer is right, nothing happens
# if answer is wrong, remove life 
# display scores 
# ------ NEW TURN ------
# change player
# repeat the above 3 steps 