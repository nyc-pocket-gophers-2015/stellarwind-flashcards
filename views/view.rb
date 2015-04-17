module View

  def self.display_welcome
    puts "*" * 50
    puts "Welcome To StellarFlash WindCards (The NSA is not watching you)"
    puts "*" * 50
    puts ""

    puts "To quit at any time enter quit."
  end

  def self.display(string)
    puts string
    puts ""
    puts ""
  end

  def self.get_input
    gets.chomp
  end




end
