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


# USER INTERFACE

puts "Interior Designer Helper [alpha]"

for i in 0...file.length
  puts file.keys[i]
  file.values[i] << gets.chomp
end

puts file