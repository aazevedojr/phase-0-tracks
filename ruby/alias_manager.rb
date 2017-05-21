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

# alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
# vowels = ['a','e','i','o','u']
# consonants = alphabet - vowels
# advanced_vowels = vowels.map do |vowel|
#   advanced_index = (vowels.index(vowel) + 1) % vowels.length
#   vowel = vowels[advanced_index]
# end
# p advanced_vowels

alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
vowels = ['a','e','i','o','u']
consonants = alphabet - vowels

# This method takes a string and an array as arguments and returns an array:

def advance_letters(word, letters)
  advanced_letters = letters.map do |letter|
    advanced_index = (letters.index(letter) + 1) % letters.length
    letter = letters[advanced_index]
  end
  advanced_letters
end

replacement_vowels = advance_letters(real_name, vowels)

# This method takes a string and two arrays of same length as arguments and returns a string:

def substitute_letters(word, letters_to_replace, replacement_letters)
  replaced_letters = word.chars.map do |letter|
    if letters_to_replace.include? letter
      letter = replacement_letters[letters_to_replace.index(letter)]
    else
      letter
    end
  end
  replaced_letters.join('')
end

p real_name
p substitute_letters(real_name, vowels, replacement_vowels)