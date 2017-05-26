class Puppy

  def initialize
    puts "initializing puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times do
      puts "Woof"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    p human_years * 7
  end

  def stay(seconds)
    seconds.times do |time|
      puts "Stayed for #{time + 1} seconds"
    end
  end

end

class Cat

  def initialize
    puts "Creating new Cat instance..."
  end

  def call
    puts "The cat ignored you... :("
  end

  def scratch(string)
    strings = string.split(" ")
    puts strings
  end

end


fido = Puppy.new

fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(3)
fido.stay(5)

p fido

fluffy = Cat.new

fluffy.call
fluffy.scratch("I love you, Fluffy!")

cats = []

for i in 1..50
  cats << Cat.new
end

cats.each do |cat|
  cat.call
  cat.scratch('Hi cat!')
end


