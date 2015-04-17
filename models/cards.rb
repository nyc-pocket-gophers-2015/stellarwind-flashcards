class Card
  attr_reader :side1, :side2
  attr_accessor :known
  def initialize(args = {})
    @side1 = args[:side1]
    @side2 = args[:side2]
    @known = args[:known] || false
  end
end
