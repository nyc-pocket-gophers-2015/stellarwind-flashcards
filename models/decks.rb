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

  def reset
    cards.each { |card| card.known = false}
  end

  def solved?
    cards.all? { |card| card.known }
  end

  def unsolved_cards
    cards.select { |card| card.known == false}
  end

end
