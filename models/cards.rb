class Card
  attr_reader :side1, :side2
  attr_accessor :known
  def initialize(args = {})
    @side1 = args[:side1]
    @side2 = args[:side2]
    @known = args[:known] || false
  end

  def check_answer(input)
    known = true if input == side2
  end

  def answered
    if known == true
      return "Your answer is correct".
     else
      return "Sorry Keep on studying."
    end
  end

end
