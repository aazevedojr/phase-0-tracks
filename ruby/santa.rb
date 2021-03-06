class Santa
  attr_reader :name, :ethnicity, :reindeer_ranking, :age, :belly_size
  attr_accessor :gender

  # Attributes:
  def initialize(name, gender, ethnicity)
    puts "Initializing Santa instance for #{name}: #{gender}, #{ethnicity}."
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(141)
    @belly_size = 1
  end

  # Instance Methods:
  def speak
    puts "#{@name} says: Ho, ho, ho! Haaaappy holidays!"
    "Happy holidays!"
  end
  def eat_milk_and_cookies(*cookie_flavors)
    cookie_flavors.each do |flavor|
      puts "#{@name} ate a #{flavor} cookie with milk!"
      @belly_size += 1
    end
    @belly_size
  end
  def celebrate_birthday(years=1)
     @age += years
     puts "Happy birthday, #{@name}!"
     @age
  end 
  def get_mad_at(reindeer)
    puts "Oh-oh! #{@name} got mad at #{reindeer}..."
    @reindeer_ranking << @reindeer_ranking.delete(reindeer)
    @reindeer_ranking
  end

  #Setter Methods:
  def gender=(new_gender)
    @gender = new_gender
    puts "#{@name} came out as #{@gender}!"
  end

end

# Making Random Santas
santas = []
santa_names = ["Father Christmas", "Saint Nicholas", "Santa Claus", "Kris Kringle", "Noel", "The Grinch"]
example_genders = ["agender", "cis-female", "bigender", "cis-male", "gender fluid", "trans-male", "trans-female"]
example_ethnicities = ["black", "Latino", "white", "Asian", "native American", "Mystical Creature", "other"]
santa_names.length.times do |i|
  santas << Santa.new(santa_names[i], example_genders.sample, example_ethnicities.sample)
end

# Playing with Santa
santas[0].speak
santas[1].eat_milk_and_cookies("Choc Chips", "Hazelnut")
puts "Belly size: #{santas[1].belly_size}"
santas[2].celebrate_birthday(60)
puts "Age: #{santas[2].age}"
santas[3].get_mad_at("Dasher")
puts "The last reindeer is now: #{santas[3].reindeer_ranking.last}"
santas[4].gender = "poligender"
puts "Their gender is now: #{santas[4].gender}"

# Making a lot of Santas
100.times do |i|
  santas << Santa.new("Nameless Santa No.#{i+1}", example_genders.sample, example_ethnicities.sample)
end
