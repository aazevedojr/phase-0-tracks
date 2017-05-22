# -- PSEUDOCODE --

# Asks for real name,
# Separates first from last name,
# Swaps them,
# Join them again,
# Changes vowels to the next vowel from "aeiou",
# Changes consonants to the next consonant from ("abcdefghijklmnopqrstuvwxyz" - "aeiou").


# -- BUSINESS LOGIC --

# Takes a string; returns a string:
def swap_names(full_name)
  full_name.split(' ').reverse.join(' ')
end

# Takes an array; returns an array:
def advance_letters(letters)
  letters.map do |letter|
    advanced_index = (letters.index(letter) + 1) % letters.length
    letter = letters[advanced_index]
  end
end

# Takes a string and two arrays; returns a string:
def substitute_letters(word, letters_to_replace, replacement_letters)
  replaced_letters = word.downcase.chars.map do |letter|
    if letters_to_replace.include? letter
      replacement_letters[letters_to_replace.index(letter)]
    else
      letter
    end
  end
  replaced_letters.join('')
end

# Takes a string; returns a string:
def name_case(full_name)
  names = full_name.split(' ')
  names.map! {|name| name.capitalize}
  names.join(' ')
end


# -- LIBRARY --

# Basic arrays:
alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
vowels = 'aeiou'.chars
consonants = alphabet - vowels

# New arrays:
replacement_vowels = advance_letters(vowels)
replacement_consonants = advance_letters(consonants)


# -- USER INTERFACE --

# Input:
puts "Enter your full name."
real_name = gets.chomp

# Calling the methods:
swapped_name = swap_names(real_name)
name_substituted_vowels = substitute_letters(swapped_name, vowels, replacement_vowels)
name_substituted_consonants = substitute_letters(name_substituted_vowels, consonants, replacement_consonants)
codename = name_case(name_substituted_consonants)

# Output:
puts "Your codename is:"
puts codename