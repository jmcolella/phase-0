# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent .5 hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.

# Pseudocode

# input: array of strings representing flavors
# output: number of strings in array, one item from the array
# steps:

# create a class for the pez dispenser
#   create an initialize method with one argument
#     create an instance variable "flavor" assigned to the initialize argument
#   create a count method
#     use the length method on the flavor instance variable
#   create a get pez method
#     use the shift method on the flavor instance variable
#   create an add pez method with one argument
#     use the push method on the flavor instance variable to add the argument to the array
#   create a see pez method
#     use the each method on the flavor instance variable to see each item in the array


# Initial Solution

class PezDispenser

  def initialize(array_of_flavors)
    @flavors = array_of_flavors
  end
  
  def pez_count
    @flavors.length
  end
  
  def get_pez
    @flavors.shift
  end
  
  def add_pez(flavor)
    @flavors.push(flavor)
  end
  
  def see_all_pez
    @flavors.each {|item| item}
  end

end


# Refactored Solution

# Not much to refactor, my solution is pretty simple as it is.

# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

# Reflection

# What concepts did you review or learn in this challenge?

# I reviewed how to make a class and using instance variables to share values across a number of method within the class. 
# This was also good practice for me to follow user stories and create code from that. It was muh more straightforward than I 
# thought.

# What is still confusing to you about Ruby?

# I'm not sure what exactly is still confusing about Ruby. Everything I know I have a good grasp on, it's things that I don't 
# know I need to review. Regular Expressions, that's something I have absolutely no clue about. See below for how I plan to rectify 
# that.

# What are you going to study to get more prepared for Phase 1?

# Well-Grounded Rubyist for sure. I need to tackle the RegEx chapter and get a good grasp on that. I also want to re-read the 
# first chapter, which I felt like had a lot of solid information that mostly went over my head.







# FIZZBUZZ SUPER EDITION (I did this on my own as extra practice)
# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
# create a method that takes in an array as its only argument
#   iterate over the array
#      IF the item in the array is divisble by 3, replace item with Fizz
#      ELSIF the item in the array is divisible by 5, replace item with Buzz
#      ELSIF the item in the array is divisible by both 3 and 5, replace item with FizzBuzz
#      ELSE keep the item as is


# Initial Solution

def super_fizzbuzz(array)
  fizzbuzz_array = []
  counter = 0
  while counter < array.length
    if array[counter] % 3 == 0 && array[counter] % 5 != 0
      fizzbuzz_array << "Fizz"
    elsif array[counter] % 5 == 0 && array[counter] % 3 != 0
      fizzbuzz_array << "Buzz"
    elsif array[counter] % 3 == 0 && array[counter] % 5 == 0
      fizzbuzz_array << "FizzBuzz"
    else
      fizzbuzz_array << array[counter]
    end
    counter += 1
  end
  p fizzbuzz_array
end



# Refactored Solution

def super_fizzbuzz(array)
  array.map do |num|
    if num % 3 == 0 && num % 5 != 0
      num = "Fizz"
    elsif num % 5 == 0 && num % 3 != 0
      num = "Buzz"
    elsif num % 3 == 0 && num % 5 == 0
      num = "FizzBuzz"
    else
      num
    end
  end
end



# Reflection
