puts "Welcome to the Pokemon World!"

# Method-Block Version:

puts "-- Red Version --"

def pick_your_starter
  pokemon1 = "Bulbasaur"
  pokemon2 = "Charmander"
  pokemon3 = "Squirtle"
  puts "It's dangerous out there!"
  puts "Take one:"
  yield(pokemon1)
  yield(pokemon2)
  yield(pokemon3)
  puts "Choose wisely!"
end

pick_your_starter { |pokemon| puts pokemon }


# hash.each Version:

puts "-- Blue Version --"

puts "Pick one:"

starters_hash = {grass: "Bulbasaur", fire: "Charmander", water: "Squirtle"}

starters_hash.each do |element, pokemon|
  puts "#{pokemon}, the #{element} Pokemon!"
end

puts "Choose wisely!"


# array.map! Version:

puts "-- Yellow Version --"

starters_array = ["Bulbasaur", "Charmander", "Squirtle"]

starters_array.map! do |pokemon|
  "Pikachu"
end

puts "Pick one:"
p starters_array
puts "There's no need to choose wisely this time, really..."

# hash.map Version:

puts "-- Green Version --"

glitchy_hash = []

starters_hash.map do |element, pokemon|
  glitchy_hash << pokemon.next.swapcase.delete("A")
end

puts "Pick one:"
p glitchy_hash
puts "Pokemon Green has only ever been released in Japan,
so it's only natural that the starter's names are rendered incorrectly.
Sorry!"