# Version 1

puts "-- Vesion 1: --"

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


# Version 2

puts "-- Version 2 --"

puts "Pick one:"

starters_hash = {grass: "Bulbasaur", fire: "Charmander", water: "Squirtle"}

starters_hash.each do |element, pokemon|
  puts "#{pokemon}, the #{element} Pokemon!"
end

puts "Choose wisely!"