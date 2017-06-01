require_relative 'house.rb'

puts 'House Builder Alpha'.upcase
puts 'Enter the house address:'

house = House.new(gets.chomp)

puts "Enter a name for the first room:"
room_name = gets.chomp
puts "Enter the width of the room (m):"
room_width = gets.to_i
puts "Enter the length of the room (m):"
room_length = gets.to_i

house.add_room(room_name, room_width, room_length)

puts "Add piece of furniture to #{room_name}:"
item_name = gets.chomp
puts "What is it made of?"
item_material = gets.chomp
puts "How much does it cost (¥)?"
item_price = gets.to_i

item = house.rooms[0].add_item(item_name, item_material, item_price)

puts house
puts house.rooms[0]
puts house.rooms[0].furniture[0]