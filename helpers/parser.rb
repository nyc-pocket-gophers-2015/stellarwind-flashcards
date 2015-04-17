require "csv"

module Parser

  def self.parse_file(file)
    lines = File.readlines(file)
    objects = []
    ((lines.count + 1)/3).times do |index|
        objects << lines.slice(index*3,3)
    end
    objects
  end

  def self.save(file, cards)
    File.open(file,"w") do |file|
      cards.each do |card|
        file << card.side1 + "\n"
        file << card.side2 + "\n"
        file << card.known.to_s + "\n"
      end
    end
  end

end


# puts File.methods.sort
# data = [Card.new(side1:"card one side one\n", side2:"card one side two\n", known: "false\n"), ["card two side one\n", "card two side two\n", "\n"]]
# Parser.save("../flashcards_ddbb.csv",data)
 # Parser.parse_file("../flashcard_samples.txt")
