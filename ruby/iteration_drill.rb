puts "--- Array Drills ---"

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

puts "Zombie Apocalypse Suplies:"

zombie_apocalypse_supplies.each do |item|
  if item != zombie_apocalypse_supplies[-1]
    print item + ' * '
  else
    puts zombie_apocalypse_supplies[-1]
  end
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

zombie_apocalypse_supplies.map! { |item| item.downcase }

def sort(array)
  for i in 1..(array.length - 1)
    j = i
    while j > 0 && array[j-1] > array[j]
      array[j], array[j-1] = array[j-1], array[j]
      j -= 1
    end
  end
  array
end

puts "Ordered Zombie Apocalypse Suplies:"
zombie_apocalypse_supplies = sort(zombie_apocalypse_supplies)
puts zombie_apocalypse_supplies.join(' * ')


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?


def check(item_to_be_checked, list_of_items)
  checklist = 1
  list_of_items.each do |item|
    if item == item_to_be_checked
      puts "Yes!"
      checklist -= 1
    end
  end
  if checklist == 1
    puts "No..."
  end
end

puts "Enter an item to check rather you have it or not."
input = gets.chomp
check(input, zombie_apocalypse_supplies)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

puts "Your bag is too full!"
until zombie_apocalypse_supplies.length == 5
  random_item = zombie_apocalypse_supplies[rand(1..zombie_apocalypse_supplies.length) - 1]
  puts "*Tosses #{random_item}*"
  zombie_apocalypse_supplies = zombie_apocalypse_supplies - [random_item]
end

puts "Remaining supplies:"
puts zombie_apocalypse_supplies.join(' * ')

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

zombie_apocalypse_supplies = zombie_apocalypse_supplies + other_survivor_supplies

puts "Combined supplies:"
zombie_apocalypse_supplie = sort(zombie_apocalypse_supplies.uniq!)
puts zombie_apocalypse_supplie.join(' * ')



puts "--- Hash Drills ---"

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

output = extinct_animals.map { |animal, year| "#{animal} - #{year}" }.join(' * ')

puts "List of extinct animals:"
puts output


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

extinct_animals.keep_if {|animal, year| year < 2000}


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
