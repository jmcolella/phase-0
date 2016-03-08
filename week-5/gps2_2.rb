# GPS 2.2


# I worked on this challenge by with: Neal Peters.
# This challenge took me 100 minutes.

# Pseudocode

# create_list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # separate the input string into individual units that can be added to a hash
  # create a blank hash
  # add each individual unit from the input string in to the newly created hash, each as its own separate key
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: a hash that includes each individual unit from the input string

# add_to_list
# input: item name, quanity number and list
# steps:
  # take the item name and add it to the create_list output hash as a key and have the quantity number as its corresponding value
# output: a hash updated with the new item name (as a key) and quantity number (as corresponding value)

# Method to remove an item from the list
# input: item name and list
# steps:
  # check if item name is in the hash output for create_list
  # if item name is in the hash output, delete the item and its corresponding value
  # if item name is not in the hash ouput, return an error message
# output: a hash updated to reflect the deleted item name and corresponding value, if that item name existed in the hash

# Method to update the quantity of an item
# input: item name, number and list
# steps:
  # check if item name is in the hash output for create_list
  # if item name is in the hash output, change its corresponding value to the number from the input
  # if item name is not in the hash ouput, return an error message
# output: a hash updated to reflect the changed value for the item name in the input, if that item name existed in the hash

# Method to print a list and make it look pretty
# input: list
# steps:
  # print the list so that it reads as follows "key: value"
# output: the key/value pairs from the create_list hash wrriten as follows: "key: value"


# Initial Solution

def create_list(items)
  items = items.split(" ")
  list = Hash.new
  items.each do |item|
    list[item] = 1
  end
  p list
end

def add_to_list(item, quantity, grocery_list)
  grocery_list[item] = quantity
  p grocery_list
end

def remove_item(item, grocery_list)
  grocery_list.delete(item)
  p grocery_list
end

def update_item_quantity(item, quantity, grocery_list)
  grocery_list[item] = quantity
  p grocery_list
end

def print_list(grocery_list)
  grocery_list.each {|item, quantity| p "#{item}: #{quantity}"}
end

# Refactored Solution

def create_list(items)
  items = items.split(" ")
  list = Hash.new
  items.each do |item|
    list[item] = 1
  end
  puts "Here is the list:"
  print_list(list)
end

def add_to_list(item, quantity, grocery_list)
  grocery_list[item] = quantity
  puts "Adding #{item} to list:"
  print_list(grocery_list)
end

def remove_item(item, grocery_list)
  grocery_list.delete(item)
  puts "Removing #{item} from list:"
  print_list(grocery_list)
end

def update_item_quantity(item, quantity, grocery_list)
  grocery_list[item] = quantity
  puts "Updating #{item} on list:"
  print_list(grocery_list)
end

def print_list(grocery_list)
  grocery_list.each {|item, quantity| p "#{item}: #{quantity}"}
end

# Driver Code

grocery_list = create_list("carrots pineapple mango meat")
add_to_list("lemonade", 2, grocery_list)
add_to_list("tomatoes", 3, grocery_list)
add_to_list("onions", 1, grocery_list)
add_to_list("ice cream", 4, grocery_list)
remove_item("lemonade", grocery_list)
update_item_quantity("ice cream", 1, grocery_list)
print_list(grocery_list)

# Reflection

# What did you learn about pseudocode from working on this challenge?

# I learned that pseudocode should be way more simple than I had been making it out to be.
# I was always trying to break things down into a million little steps while also trying to
# take into account many different ideas at once (what about an if statement to check our
# input; what about an error message, etc.). This lead to me, during this challenge, spiralling
# a bit out of control and not focusing at the major tasks at hand.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# An array is great for storing single pieces of information; what I mean by that is that an array is
# good at storing a simple list of items/numbers, not one that associates items with a number or some other
# item. This is where a hash, with its key/value pairs, comes in and what ultimately made it the most useful
# for this challenge because we needed to do exactly what I stated above: associate and item (key) with a
# number (value). An array was useful, though, particularly to help us separate out the string initially passed
# to the create_list method, so that we could iterate over that array and push each of its items as keys to a
# new hash, which could become our list.

# What does a method return?

# A method returns a certain output based on the block of code within it. This can be as simple as printing
# something to the console, or taking in an argument and manipulating that through a block of code.

# What kind of things can you pass into methods as arguments?

# Well, I learned today that you can pass a variable into a method, since this was the key way to link all of
# the methods together in order to manipulate the list initially created in the create_list method. You can also
# pass strings, integers and arrays as arguments into a method. The method will then manipulate these arguments
# based on the code within it, and return an output based on that process.

# How can you pass information between methods?

# It seems you can pass information between methods by setting the output of these various methods to different
# variables. Then, you can pass the variables containing the method output to other methods, which can then
# manipulate that output based on its code. For example, in this challenge, we took the create_list method and
# set that equal to a variable that we could pass through our other methods to manipulate the list output from
# that create_list method.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# The idea of passing a method's output into another method as a variable was not only solidified, but just
# straight up introduced. I had no idea we could do that (I guess I snoozed during some of the readings) and
# it proved instrumental to completing this challenge. I'm still a bit confused no breaking down some built in
# methods, like each and split, into simple loops with counters in order to iterate over an array or hash. My
# guide, who was also my pair, allowed/encouraged me to use the built in methods, but I think I should spend some
# some time figuring out how to break these methods down to their most base components. I understand how the
# counter works, I was just confused how to implement it in this particular challenge.