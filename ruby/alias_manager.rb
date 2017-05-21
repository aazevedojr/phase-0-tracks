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

#def advance_vowel(name)
#  vowels = ['a','e','i','o','u']
#  name_letters = name.downcase.chars
#  p name_letters
#  name_vowels = name_letters & vowels
#  p name_vowels
#  advanced_vowels = name_vowels.map {|vowel| vowel = vowels[vowels.index(vowel) + 1]}
#  p advanced_vowels
#  name_letters.map! do |letter|
#    Not looking good... D:
#  end
#  name_letters.join(' ')
#end

#vowel_advanced_name = advance_vowel(real_name)

# "Dictionary" Approach:

alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
vowels = ['a','e','i','o','u']
consonants = alphabet - vowels
advanced_vowels = vowels.map do |vowel|
  advanced_index = (vowels.index(vowel) + 1) % vowels.length
  vowel = vowels[advanced_index]
end
p advanced_vowels