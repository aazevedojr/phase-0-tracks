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
    puts "#{@name} says: Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(*cookie_flavors)
    cookie_flavors.each {|flavor| puts "#{@name} ate a #{flavor} cookie with milk!"}
  end
end

# dad_xmas = Santa.new("St. Nick", "male", "white")
# dad_xmas.speak
# dad_xmas.eat_milk_and_cookies("chocolate chip", "hazelnut")

santas = []
santa_names = ["Father Christmas", "Saint Nicholas", "Santa Claus", "Kris Kringle", "Noel", "The Grinch"]
example_genders = ["agender", "cis-female", "bigender", "cis-male", "gender fluid", "trans-male", "trans-female", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Asian", "native American", "Mystical Creature", "other", "N/A"]
santa_names.length.times do |i|
  santas << Santa.new(santa_names[i], example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
end
