# Gathering Data

puts "What is your name?"
name = gets.chomp
puts  "How old are you?"
age = gets.to_i
puts "What year is it?"
year = gets.to_i
puts "In which year were you born?"
birth = gets.to_i
puts "Would you like some garlic bread? (Y/N)"
garlic_bread = gets.chomp.downcase
puts "Would you like to enroll in the company’s health insurance? (Y/N)"
health_insurance = gets.chomp.downcase


# Data Processing

actual_age = year - birth

if garlic_bread == y
  garlic_bread = TRUE
else
  garlic_bread = FALSE
end

if health_insurance == y
  health_insurance = TRUE
else
  health_insurance = FALSE
end

# Data Analysis