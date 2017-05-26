class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(*cookie_flavors)
    cookie_flavors.each {|flavor| puts "That was a good #{flavor} cookie!"}
  end
  def initialize
    puts "Initializing Santa instance ..."
  end
end

dad_xmas = Santa.new
dad_xmas.speak
dad_xmas.eat_milk_and_cookies("chocolate chip", "hazelnut")