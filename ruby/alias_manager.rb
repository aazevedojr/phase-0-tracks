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

alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
vowels = ['a','e','i','o','u']
consonants = alphabet - vowels

# This method takes an array as arguments and returns an array:

def advance_letters(letters)
  advanced_letters = letters.map do |letter|
    advanced_index = (letters.index(letter) + 1) % letters.length
    letter = letters[advanced_index]
  end
  advanced_letters
end

replacement_vowels = advance_letters(vowels)
replacement_consonants = advance_letters(consonants)
p replacement_consonants

# This method takes a string and two arrays of same length as arguments and returns a string:

def substitute_letters(word, letters_to_replace, replacement_letters)
  replaced_letters = word.downcase.chars.map do |letter|
    if letters_to_replace.include? letter
      letter = replacement_letters[letters_to_replace.index(letter)]
    else
      letter
    end
  end
  replaced_letters.join('')
end

p real_name
name_substituted_vowels = substitute_letters(swapped_name, vowels, replacement_vowels)
p substitute_letters(name_substituted_vowels, consonants, replacement_consonants)