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
  attr_reader :secret_word, :partial_solution, :letters_thrown, :turns

  def initialize(secret_word)
    @secret_word = secret_word
    @turns = @secret_word.length + 3
    @letters_thrown = []
    @partial_solution = ('_' * secret_word.length).chars
  end

  def feedback
    @partial_solution.join(' ')
  end

  def guess(letters)
    letters.each do |letter|
      @letters_thrown << letter
      @letters_thrown = @letters_thrown.uniq.sort
    end
  end

  def update
    @secret_word.length.times do |i|
      if @letters_thrown.include? @secret_word[i]
        @partial_solution[i] = secret_word[i]
      end
    end
  end

  def count_turn
    @turns = @secret_word.length - @letters_thrown.length + 3
  end

end

def input_validator(input)
  valid_characters = 'abcdefghijklmnopqrstuvwxyz'.upcase.chars
  (input - valid_characters).empty?
end

# --- USER INTERFACE ---

puts "H A N G M A N"
puts "--- Player 1 ---"

input = []

loop do
  puts "Enter a word for Player 2 to guess:"
  input = gets.chomp.upcase.chars
  break if input_validator(input) == true
  puts "Please use characters from A to Z only."
end

game = Hangman.new(input)

puts "--- Player 2 ---"

until game.turns == 0 || game.partial_solution == game.secret_word

  loop do
    puts "Secret Word: #{game.feedback}"
    puts "Make a guess!"
    input = gets.chomp.upcase.chars
    break if input_validator(input) == true
    puts "Please use a single character from A to Z."
  end
  
  game.guess(input)
  game.update
  game.count_turn
  
  puts "Guessed Letters: #{game.letters_thrown.join(', ')}"
  puts "Attempts left: #{game.turns}"
end

puts "Secret Word: #{game.feedback}"

if game.partial_solution == game.secret_word
  puts " * * * Player 2 Wins! * * * "
else
  puts " * * * Player 1 Wins! * * * "
end