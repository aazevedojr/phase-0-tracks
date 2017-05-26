class Santa

  # Attributes:
  def initialize(name, gender, ethnicity)
    puts "Initializing Santa instance for #{name} (#{gender}, #{ethnicity})..."
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @belly_size = 1
  end

  # Instance Methods:
  def speak
    puts "#{@name} says: Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(*cookie_flavors)
    cookie_flavors.each {|flavor| puts "#{@name} ate a #{flavor} cookie with milk!"}
  end
  def celebrate_birthday
     @age += 1
     puts "Happy birthday, #{@name}!"
  end 
  def get_mad_at(reindeer)
    puts "Oh-oh! #{@name} got mad at #{reindeer}..."
    @reindeer_ranking << @reindeer_ranking.delete(reindeer)
  end
  #def get_mad_at(reindeer)
  #  @reindeer_ranking << @reindeer_ranking(reindeer)
  #end

  # Getter Methods:
  def name
    @name
  end
  def gender
    @gender
  end
  def ethnicity
    @ethnicity
  end
  def age
    @age
  end

  #Setter Methods:
  def gender=(new_gender)
    @gender = new_gender
    puts "#{@name} came out as #{@gender}!"
  end


end



# dad_xmas = Santa.new("St. Nick", "male", "white")
# dad_xmas.speak
# dad_xmas.eat_milk_and_cookies("chocolate chip", "hazelnut")

santas = []
santa_names = ["Father Christmas", "Saint Nicholas", "Santa Claus", "Kris Kringle", "Noel", "The Grinch"]
example_genders = ["agender", "cis-female", "bigender", "cis-male", "gender fluid", "trans-male", "trans-female"]
example_ethnicities = ["black", "Latino", "white", "Asian", "native American", "Mystical Creature", "other"]
santa_names.length.times do |i|
  santas << Santa.new(santa_names[i], example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
end

santas[0].speak
santas[1].eat_milk_and_cookies("Choc Chips", "Hazelnut")
santas[2].celebrate_birthday
p santas[2]
santas[3].get_mad_at("Dasher")
p santas[3]
santas[4].gender = "poligender"
p santas[4]