class Card
  attr_reader :side1, :side2 # maybe questing and answer as names instead? of front/back
  attr_accessor :known
  def initialize(args = {})
    @side1 = args[:side1]
    @side2 = args[:side2]
    @known = convert_bool(args[:known])
  end

  def check_answer(input)
    # good. alwasy ise self when modifying 
    # instance state
    self.known = true if input == side2
  end

  def answered?
    # Strings should be in the view. Change the controller
    # and views to display these strings. In addition to MVC,
    # as developers you will have to start thinking about
    # localization. It's better if all strings that are shown to a user
    # are in a single place where other translations can be modified
    # as well.
    known
  end

  private
  def convert_bool(input)
    input == "true" ? true : false
  end

end
