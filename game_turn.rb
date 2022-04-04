require_relative './player.rb'

class Game

  attr_reader :players, :current_player, :show_life

  def initialize(player1, player2)
    @players = [player1, player2]
    @
    @current_player = @players[0]
  end

  def remove_life
    @players.any? {|player| player.lose?}
  end

  def change_player
    if @current_player   
  end


end