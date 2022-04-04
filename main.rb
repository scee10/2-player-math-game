require_relative "./player.rb"
require_relative "./question.rb"
require_relative "./game_turn.rb"

# requires all the files
# I/O logic 

print "Enter your name Player 1: "
player_one_name = gets.chomp.to_s
print "Enter your name Player 2: "
player_two_name = gets.chomp.to_s

player1 = Player.new(player_one_name)
player2 = Player.new(player_two_name)


# ask question 
# answer
# display scores 
# ------ NEW TURN ------
# repeat the above 3 steps 