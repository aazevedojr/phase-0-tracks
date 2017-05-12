#i = 0
#password = string
#defines a method that loop through the letters of the string
#and advances every letter of the string once with no changes to "space"

#decrypt method:
# while i < password.length
#iterate make each one into the previous letter

def encrypt(password)
index = 0
  while index < password.length
    puts password[index].next
    index += 1
  end
end

#encrypt("magicword")

def decrypt(password)
  alphabet = "abcdefghijklmnopqrstuvwxyz" 
  index = 0
  while index < password.length
      puts alphabet[index]
      index += 1
  end
end

decrypt("magicword")

