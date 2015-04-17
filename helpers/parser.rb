require "csv"

module Parser

  def self.parse_file(file)
    objects = []
    CSV.read(file, headers: true, header_converters: :symbol).each do |row|
      objects << row.to_hash
    end
    objects
  end

  def self.save(file, data)
    CSV.open(file, "w") do |row|
      row << data[0].keys
      data.each {|entry| row << entry.values }
    end
  end

end


# puts Parser.parse_file("../flashcards_ddbb.csv")
# data = [{:side_one=>"question", :side_two=>"answer", :known=>"true"},{:side_one=>"question 2", :side_two=>"answer 2", :known=>"false"}]
# Parser.save("../flashcards_ddbb.csv",data)
# puts Parser.parse_file("../flashcards_ddbb.csv")
