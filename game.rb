require './player.rb'

class Game 
  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @is_p1_turn = false
  end

  def switch_player
    @is_p1_turn = !@is_p1_turn
  end

  def run
    until p1.lives == 0 || p2.lives == 0 do
      
    end
  end
end



is_p1_turn? = true


