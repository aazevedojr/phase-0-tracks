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
  name.split(' ').reverse.join(' ')
end

swapped_name = swap_name(real_name)

#p swapped_name

def advance_vowel(name)
  vowels = ['a','e','i','o','u']
  name_letters = name.downcase.chars
  name_vowels = name_letters & vowels
  advanced_vowels = name_vowels.map {|vowel| vowel = vowels[vowels.index(vowel) + 1]}
  name_letters.map! do |letter|
    #Stopped here.
  end
  name_letters.join(' ')
end

vowel_advanced_name = advance_vowel(real_name)