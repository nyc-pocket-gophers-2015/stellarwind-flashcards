class Controller

  attr_reader :card

  def initialize(deck)
    @deck = deck
  end

  def get_card
    @card = @deck.pop_card
  end

  def show_side_one
    View.display(card.side1)
  end

  def show_side_two
    View.display(card.side2)
  end

  def check_answer
    answer = View.get_input
    if card.check_answer(answer)
        card.known = true
    end
  end


end
