# PSEUDOCODE:

# Asks for real name,
# Separates first from last name,
# Swaps them,
# Join them again,
# Changes vowels to the next vowel from "aeiou",
# Changes consonants to the next consonant from ("abcdefghijklmnopqrstuvwxyz" - "aeiou").

# BUSINESS LOGIC:

real_name = "Felicia Torres"

def swap_name(name)
  name.split(' ').reverse!.join(' ')
end

p swap_name(real_name)