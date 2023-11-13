class Question
  attr_accessor :ans
  def initialize
    @term1 = rand(1..20)
    @term2 = rand(1..20)
    @op = ['+','-','*','/'].sample
    @ans = perform_calc
  end

  def perform_calc
    options = {
      '+' => @term1 + @term2,
      '-' => @term1 - @term2,
      '*' => @term1 * @term2,
      '/' => @term1 / @term2 
    }

    options[@op]
  end

  def to_s
    "#{@term1} #{@op} #{@term2} = #{@ans}"
  end
end

q = Question.new
puts q.to_s