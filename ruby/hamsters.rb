# Hamster's File

puts "Hamster's name:"
name = gets.chomp
puts "Hamster's squeak volume (1 - 10):"
volume = gets.to_i
puts "Fur color:"
color = gets.chomp
puts "Good candidate for adoption? (Y/N)"
adoptable = gets.chomp.downcase
puts "Estimated age in years:"
age = gets.chomp

# Processing Data

if age.empty?
  age = nil
else
  number = number.to_f
end

if adoptable == "y"
  adoptable = TRUE
elsif adoptable == "n"
  adoptable = FALSE
else
  adoptable = nil
end


# Printing Data

puts "---New Hamster File Created---"
puts "Name: " + name
puts "Volume level: #{volume}"
puts "Fur color: #{color}"
puts "Adoptable: #{adoptable}"
puts "Age: #{age}"