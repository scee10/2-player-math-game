require_relative './player.rb'

class Game

  attr_reader :players, :current_player, :show_life

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
  end

  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

  def remove_life
    @current_player.life -= 1
    if @current_player.life == 0 
      puts "--- GAME OVER ---"
      puts "#{@current_player.name}, you lost!"
    end
  end

  def show_life
    puts "#{@players[0].name}: #{@players[0].life}/3 vs #{players[1].name}: #{@players[1].life}/3"
  end

end
