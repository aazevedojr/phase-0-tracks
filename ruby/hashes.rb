# --- Interior Designer Helper ---


# PSEUDOCODE

# Design template file for clients.

# Create a loop that ask the user for the client's details
# and stores the answers in a file.

# Print the client's file on the screen.

# Ask the user which fields need to be updated, or if none.

# Ask the user for the updated value for that field.

# Print the updated file.


# BUSINESS LOGIC

file = {
  name: "",
  age: "",
  number_of_children: "",
  forbidden_color: "",
  psychedelic: "",
  minimalist: "",
  vitorian: "",
  japanese_medieval: ""
}

def string_converter(string)
  if string == "y" || string == "n"
    string == "y"
  elsif string == "0"
    0
  elsif string.to_i != 0
    string.to_i
  else
    string
  end
end

#p string_converter("y")
#p string_converter("n")
#p string_converter("0")
#p string_converter("1")
#p string_converter("yellow")

# USER INTERFACE

puts "Interior Designer Helper [alpha]"


# Doesn't work! What doesn't it work? D:

# for i in 0...file.length
#   puts file.keys[i]
#   file.values[i] = string_converter(gets.chomp)
# end

for i in 0...file.length
  puts file.keys[i]
  file[file.keys[i]] = string_converter(gets.chomp)
end

p file