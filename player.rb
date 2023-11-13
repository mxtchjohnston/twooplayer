class Player
  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def remove_life()
    @lives = @lives - 1
  end
end

# p1 = Player.new("JIM")
# p2 = Player.new("Bonafacia")

# puts p1.name
# puts p1.remove_life
