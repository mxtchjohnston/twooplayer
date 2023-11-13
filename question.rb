class Question
  attr_reader :ans
  def initialize
    @term_1 = rand(1..20)
    @term_2 = rand(1..20)
    @op = ['+','-','*','/'].sample
    @ans = @term_1.send(@op, @term_2)
  end

  def to_s
    "What does #{@term_1} #{@op} #{@term_2} equal?"
  end
end
