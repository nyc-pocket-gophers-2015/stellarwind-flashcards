require_relative "../views/view"
require_relative "../models/decks"
require_relative "../models/cards"
require_relative "../helpers/parser"

class Controller

  attr_reader :card, :deck

  def initialize(deck)
    @deck = deck
  end

  def next_card
    @deck.next_card
  end

  def show_side_one
    View.display(card.side1)
  end

  def show_side_two
    View.display(card.side2)
  end

  def check_card_answer
    answer = View.get_input
    card.check_answer(answer)
  end

  def card
    deck.get_card
  end

  def setup
    View.display_welcome
    start_deck
  end

  def start_deck (done = false)
    deck.reset if done
    show_side_one
    check_card_answer
    puts card.answered
    show_side_two
    puts card.known
    if deck.solved?
      View.display "Continue? Y/N"
      response = View.get_input
      response.downcase == "y" ?  start_deck(true) : quit
    else
      deck.next_card
      start_deck
    end
  end

  def quit
    View.display "Goodbye!!"
    return
  end

end


def start_program
  cards = Parser.parse_file("../flashcard_samples.txt")
  cards = cards.map do |card|
    hash = {
      side1: card[0].chomp,
      side2: card[1].chomp,
      known: card[2] == nil ? "" : card[2].chomp
    }
    Card.new(hash)
  end
  deck = Deck.new(cards:cards)
  controller = Controller.new(deck)
  controller.setup
end

start_program
