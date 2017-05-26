class Santa
  def initialize(name, gender, ethnicity)
    puts "Initializing Santa instance for #{name} (#{gender}, #{ethnicity})..."
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(*cookie_flavors)
    cookie_flavors.each {|flavor| puts "That was a good #{flavor} cookie!"}
  end
end

dad_xmas = Santa.new("St. Nick", "male", "white")
dad_xmas.speak
dad_xmas.eat_milk_and_cookies("chocolate chip", "hazelnut")