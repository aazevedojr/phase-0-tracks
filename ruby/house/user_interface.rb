require_relative 'house.rb'

puts 'House Builder Alpha'.upcase
puts 'Enter the house address:'

house = House.new(gets.chomp)
puts house

puts "Enter a name for the first room:"
room_name = gets.chomp
puts "Enter the width of the room (m):"
room_width = gets.to_i
puts "Enter the length of the room (m):"
room_length = gets.to_i

house.add_room(room_name, room_width, room_length)


