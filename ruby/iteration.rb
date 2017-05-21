puts "Welcome to the Pokemon World!"

# Method-Block Version:

puts "-- Red Version --"

def pick_your_starter
  pokemon1 = "Bulbasaur"
  pokemon2 = "Charmander"
  pokemon3 = "Squirtle"
  puts "It's dangerous out there!"
  puts "Pick one:"
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

glitchy_array = []

starters_hash.map do |element, pokemon|
  glitchy_array << pokemon.next.swapcase.delete("A")
end

puts "Pick one:"
p glitchy_array
puts "Pokemon Green has only ever been released in Japan,
so it's only natural that the starter's names are rendered incorrectly.
Sorry!"


# Release 2: Use the Documentation

puts "-- Let's get this party started! --"

shopping_list = ["red cups", "beer", "nachos", "cookies", "balloons"]

party_playlist = {
  rock: "Metallica",
  pop: "Lady Gaga",
  rap: "Macklemore",
  funk: "MC Mayara",
  electro: "Daft Punk"
}

puts "Party plans:"
p shopping_list
p party_playlist

# Iterate through the items, deleting any that meet a certain condition:

puts "Partying on a budget:"
p shopping_list.reject { |item| item.length > 6 }
p party_playlist.reject { |genre, artist| genre == :rap || artist[0] != "M" }

# Filter a data structure for only items that do satisfy a certain condition:

puts "Alcoholics' party:"
p shopping_list.select { |item| item[0] == "b" }
p party_playlist.select { |genre, artist| genre == :funk }

# Filter a data structure for only items satisfying a certain condition (other):

puts "Picky's Party"

picky_list = shopping_list
picky_playlist = party_playlist

picky_list.keep_if { |item| item.length < 8 }
picky_playlist.keep_if { |genre, artist| genre != :electro && artist != "Lady Gaga" }

p picky_list
p picky_playlist

# Remove items from a data structure until the condition in the block evaluates to false, then stops:

puts "Superstitious' Party:"
p shopping_list.drop_while { |item| item.length > 5 }
p party_playlist.drop_while { |genre, artist| artist.length == 9 }