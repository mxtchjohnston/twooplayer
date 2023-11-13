require './player.rb'
require './question.rb'

class Game 
  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @current_player = @p1
  end

  def switch_player
    if @current_player == @p1 
      @current_player = @p2
    else
      @current_player = @p1
    end
  end

  def run
    until @p1.lives == 0 || @p2.lives == 0 do
      q = Question.new
      puts "----- NEW TURN -----"
      puts "#{@current_player.name}: #{q.to_s}"
      ans = gets.chomp.to_i
      if ans == q.ans
        puts "#{@current_player.name}: Correct!"
      else 
        puts "#{@current_player.name}: Incorrect! it is #{q.ans}"
        @current_player.remove_life
      end
      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
      
      switch_player

    end
    puts "#{@current_player.name} is the winner with a score of #{@current_player.lives}/3"
    puts "---- GAME OVER -----"
  end
end


