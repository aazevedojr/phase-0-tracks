#i = 0
#password = string
#defines a method that loop through the letters of the string
#and advances every letter of the string once with no changes to "space"

#decrypt method:
# while i < password.length
#iterate make each one into the previous letter

test = "magicword"

puts "The password is: #{test}"

def encrypt(password)
i = 0
  while i < password.length
    puts password[i].next
    i += 1
  end
end

puts "The encrypted password is:"
encrypt(test)

def decrypt(password)
  alphabet = "abcdefghijklmnopqrstuvwxyz" 
  i = 0
  while i < password.length
      puts alphabet[alphabet.index(password[i]) - 1]
      i += 1
  end
end

puts "The decrypted password is:"
decrypt(test)

