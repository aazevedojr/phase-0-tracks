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

pick_your_starter { |pokemon| puts pokemon}
