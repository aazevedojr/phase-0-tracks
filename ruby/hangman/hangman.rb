# --- PSEUDOCODE ---
# 
# One user can enter a word and another user attempts to guess the word.
# 
# Guesses are limited, and the number of guesses available is related to the length of the word.
# 
# Repeated guesses do not count against the user.
# 
# The guessing player receives continual feedback on the current state of the word.
# So if the secret word is "unicorn", the user will start out seeing something like
# "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# 
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# --- BUSINESS LOGIC ---

class Hangman

  attr_reader :secret_word, :guess_count, :guessed
  attr_accessor :letters

  def initialize(secret_word)
    @secret_word = secret_word.upcase.chars
    @guess_count = secret_word.length + 3
    @letters = []
    @guessed = false
  end

  def feedback
    # displays letters guessed and _ _ X _ _
  end

  def guess(letter)
    # returns 
  end

end

def input_validator(input)
  valid_characters = 'abcdefghijklmnopqrstuvwxyz'.upcase.chars
  (input - valid_characters).empty?
end

# --- USER INTERFACE ---

puts "H A N G M A N"
puts "--- Player 1 ---"

loop do
  puts "Enter a word for Player 2 to guess:"
  input = gets.chomp
  break if input_validator(input) == true
  puts "Please use characters from A to Z only."
end

game = Hangman.new(input)

puts "--- Player 2 ---"

loop do
  puts feedback
  puts "Make a guess!"
  input = gets.chomp
  break if input_validator(input) == true
  puts
end

game.guess(input)