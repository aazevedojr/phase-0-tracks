# Method to create a list

# Method that creates a hash:
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Splits items into an array
  # Turn items into keys and respective quantity into value
  # print the list to the console
# output: hash

# Method to add an item to a list:
# input: list, item name will be a key, and optional quantity will be the value (defaults to 1)
# steps: Takes an item to be added to the list and an optional quantity for that item
# inserts item into a key and quantity into value (1 if not entered)
# output: updated list

# Method to remove an item from the list:
# input: Takes an item to be removed 
# steps: Sets condition that removes item from the list IF it equals the item to be removed
# output: Updated list

# Method to update the quantity of an item:
# input: Takes a string and an integer
# steps: Find value by key and update value to inputted value
# output: Updated list

# Method to print a list and make it look pretty:
# input: The list (hash)
# steps: Insert human readable text
# output: Updated list


def list_maker(items, *quantities)
  list_hash = {}
  list_array = items.split(' ')
  for i in 0..(list_array.length - 1)
    list_hash[list_array[i]] = quantities[i]
  end
  list_hash.map do |item, quantity|
    if quantity == nil 
      list_hash[item] = 1 
    end
  end
  list_hash
end


def add_to_list(list, item, quantity = 1)
  list[item] = quantity
  list
end

created_list = list_maker("carrots apples cereal pizza")
 p add_to_list(created_list, "cheese", 2)