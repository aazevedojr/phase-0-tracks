# Hamster's File

puts "Hamster's name:"
name = gets.chomp
puts "Hamster's squeak volume (1 - 10):"
volume = gets.to_i
puts "Fur color:"
color = gets.chomp
puts "Good candidate for adoption? (Y/N)"
adoptable = gets.chomp
puts "Estimated age in hamster years:"
age = gets.to_i

# Processing Data

if age == 0
  age = nil
end

# Printing Data

puts "---New Hamster File Created---"
puts "Name: " + name
puts "Volume level: #{volume}"
puts "Fur color: #{color}"
puts "Adoptable? #{adoptable}"
puts "Age: #{age}"