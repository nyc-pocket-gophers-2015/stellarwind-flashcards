class Deck
  attr_reader :cards
  def initialize(args = {})
    @cards = args[:cards]
  end

  def get_card
    cards[0]
  end

  def next_card
    cards.rotate!
  end

  def reset
    cards.each { |card| card.known = false}
  end

  def solved?
    cards.all? { |card| card.known }
  end

  # def unsolved_cards
  #   cards.select { |card| card.known == false}
  # end

end
