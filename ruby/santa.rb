class Santa
  def initialize(name, gender, ethnicity, age = 0)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @age = age
    puts "Initializing Santa instance for #{@name}: #{@gender}, #{@ethnicity}, #{@age} years old."
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(*cookie_flavors)
    cookie_flavors.each {|flavor| puts "That was a good #{flavor} cookie!"}
  end
end

dad_xmas = Santa.new("St. Nick", "Male", "White", 1400)
dad_xmas.speak
dad_xmas.eat_milk_and_cookies("chocolate chip", "hazelnut")