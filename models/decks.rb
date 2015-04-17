class Deck
  attr_reader :cards
  def initialize(args = {})
    @cards = args[:cards]
  end

  def get_card
    current_card = cards[0]
    cards.rotate!
    current_card
  end

end
