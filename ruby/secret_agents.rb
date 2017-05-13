#i = 0
#password = string
#defines a method that loop through the letters of the string
#and advances every letter of the string once with no changes to "space"

#decrypt method:
# while i < password.length
#iterate make each one into the previous letter

password = "magicword"

# puts "The original  password is: #{password}"

def encrypt(string)
  i = 0
  encrypted_string = ""
  while i < string.length
    if string[i] != "z"
      encrypted_string += string[i].next
    else
      encrypted_string += "a"
    end
    i += 1
  end
  encrypted_string
end

# puts "The encrypted password is: #{encrypt(password)}"

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz" 
  i = 0
  decrypted_string = ""
  while i < string.length
      decrypted_string += alphabet[alphabet.index(string[i]) - 1]
      i += 1
  end
  decrypted_string
end

# puts "The decrypted password is: #{decrypt(encrypt(password))}"

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")

# puts decrypt(encrypt("swordfish"))

# In ruby, it's possible to have nested method calls.
# It runs the inner most method which will be used as the argument for the outer method.

  puts "Would you like to encrypt or decrypt a password?"
  answer = gets.chomp
  until answer == "encrypt" || answer == "decrypt"
    puts "Please enter either 'encrypt' or 'decrypt'."
    answer = gets.chomp
  end
  puts "Please enter the password."
  word = gets.chomp

if answer == "encrypt"
  puts encrypt(word)
elsif answer == "decrypt"
  puts decrypt(word)
else
  puts "Sorry, I didn't understand that."
end

    