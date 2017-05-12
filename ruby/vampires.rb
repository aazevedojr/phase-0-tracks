# Processing Multiple Employees

puts "How many employees will be processed?"
employees = gets.to_i
i = 0
until i == employees


  # Gathering Data
  
  puts "What is your name?"
  name = gets.chomp
  puts  "How old are you?"
  age = gets.to_i
  puts "What year is it?"
  year = gets.to_i
  puts "In which year were you born?"
  birth = gets.to_i
  puts "Has your birthday already passed this year? (Y/N/Today)"
  birthday = gets.chomp.upcase
  puts "Would you like some garlic bread? (Y/N)"
  garlic_bread = gets.chomp.upcase
  puts "Would you like to enroll in the company’s health insurance? (Y/N)"
  health_insurance = gets.chomp.upcase
  
  
  # Data Processing
  
  #1 birthday to boolean:
  if (birthday == "Y") || (birthday == "TODAY")
    birthday = TRUE
  else
    birthday = FALSE
  end
  
  #2 calculating the employee's actual age:
  if birthday
    actual_age = year - birth
  else
    actual_age = year - birth - 1
  end
  
  #3 age to boolean:
  if actual_age == age
    age = TRUE
  else
    age = FALSE
  end
  
  #4 garlic_bread to boolean:
  if garlic_bread == "Y"
    garlic_bread = TRUE
  else
    garlic_bread = FALSE
  end
  
  #5 health_insurance to boolean:
  if health_insurance == "Y"
    health_insurance = TRUE
  else
    health_insurance = FALSE
  end
  
  
  # Data Analysis

  i += 1
  puts "Results for employee number #{i}:"

  if (name == "Drake Cula") || (name == "Tu Fang")
    puts "#{name} is definitely a vampire."
  elsif !age && !garlic_bread && !health_insurance
    puts "#{name} is almost certainly a vampire."
  elsif !age && (!garlic_bread || !health_insurance)
    puts "#{name} is probably a vampire."
  elsif age && (garlic_bread || health_insurance)
    puts "#{name} is probably not a vampire."
  else
    puts "Results for #{name} are inconclusive."
  end

  if i < employees
    puts "Initiating survey for employee number #{ i + 1 }..."
  end

end