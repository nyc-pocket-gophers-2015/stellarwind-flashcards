class Deck
  attr_reader :cards
  def initialize(args = {})
    @cards = args[:cards]
  end
end
