
# Pad an Array

# I worked on this challenge with: Christyn Budzyna

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An array, minimum size, value

# What is the output? (i.e. What should the code return?)
# a new array with padding

# What are the steps needed to solve the problem?
# IF minimum size is less than the length of the array, return the array
# ELSE minimum size is greater than the array
# Subtract the array size from the minimum size and store in a variable "length to add"
# Make a new array with the size as length to add and the value as value.
# Concatenate two arrays
# Return the new array


# 1. Initial Solution

# def pad(array, min_size, value = nil)
#   clone_array = array.clone
#   if clone_array.length >= min_size
#     return clone_array
#   elsif clone_array.length < min_size
#     length_to_add = min_size - clone_array.length
#     new_array = clone_array + Array.new(length_to_add,value)
#   end
#   p new_array.flatten
# end

# def pad!(array, min_size, value = nil)
#   arr_var = array
#   if arr_var.length >= min_size
#   return arr_var
#   elsif arr_var.length < min_size
#     length_to_add = min_size - arr_var.length
#     array_to_add = Array.new(length_to_add,value)
#     new_array = array << array_to_add
#  end
#   return new_array.flatten!
# end


# 3. Refactored Solution (completed as bonus challenge in Week 6)

def pad(array, min_size, value = nil)
  clone_array = array.clone
  if clone_array.length >= min_size
    p clone_array
  else
    until clone_array.length == min_size
      clone_array.push(value)
      # used the push method instead of concatenating two arrays; this method will add the argument passed to it to the
      # array it is called on; within the context of the loop, push will stop adding the argument once the array
      # length is equal to the min_size integer passed in to the pad method
    end
  end
  p clone_array
end

array = [1,2,3]
pad(array, 5, "apples")

def pad!(array, min_size, value = nil)
  if array.length >= min_size
    p array
  else
    until array.length == min_size
      array.push(value)
    end
  end
  p array
end

array = [1,2,3]
pad(array, 5, "apples")

# There are no methods that could simplify our initial solution.

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# I believe my pair and I were succesfuly at breaking the problem into semi-small steps. As you can see from our
# pseudocode, each step is a breakdown of what our code ended up being, but they are kind of general and don't really
# get out the process of how to accomplish what that step describes. I'm still a little hazy on what pseudocode can be,
# so maybe these general steps are good enough and you can get into the nitty-gritty when actually writing the code.
# Some feedback on how you (review) go about pseudocode would be nice, thanks.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did
# you have?

# I was surprised how easily we were in the end able to get the general steps we outlined into working code. The big
# difficulty we had was trying to get the pad method to be non-destructive; that tok a lot of tinerking and experimenting.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# Our initial solution was not successful at passing all of the tests. We got hung up on the "pad operates non
# destructively" test. We actually couldn't figure out how to do this while we were still paired up, so we had to do some
# research on our own. I eventually found this clone method that can be called on any object in Ruby. You can then assign
# a new variable to this clone object and use the new variable to manipulate the information from the original object
# without actually changing the origin object. It took a long time for me to figure that one out, glad I did though.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# Our initial solution was written in a way that we felt could not be simplified using any known Ruby methods.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# We tried hard to use the same argument names as the variable names throughout the method. The only new variable we
# introduced was a "new_array" where we stored the two concatenated arrays. That array name may be a bit non-descript,
# but for the purposes of this small challenge, I think it works.

# What is the difference between destructive and non-destructive methods in your own words?

# A destructive method is one that permanently changes the object to which it is called. A non-destructive method is one
# that does not permanently change the object to which it is called. For example, if we call the sort method with a breaking
# operator (!), to denote destructive, on an array, then however that array is sorted will be the new order of the array,
# completely replacing the original version of the array. On the other hand, if we were to call the sort method on the array
# without a bang operator, then the new sorted array will not replce the original array the method was called on, the
# sort method would create two separate objects, the original and the one that was sorted.