class Player
  attr_accessor :lives
  attr_reader :name
  def initialize(name)
    @name = name
    @lives = 3
  end
end

p1 = Player.new("JIM")
p2 = Player.new("Bonafacia")

puts p1.name
p1.lives = 2
puts p1.lives