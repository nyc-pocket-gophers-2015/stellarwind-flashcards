require "csv"
# excellent use of a model
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


# never commit unused code
