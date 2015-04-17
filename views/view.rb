module View

  def self.display_welcome
    puts "*" * 50
    puts "Welcome To StellarFlash WindCards (The NSA is not watching you)"
    puts "*" * 50
  end

  def self.display(string)
    puts string
  end

  def self.get_input
    gets.chomp
  end




end
