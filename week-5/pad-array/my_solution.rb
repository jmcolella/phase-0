
# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, minimum size, value
# What is the output? (i.e. What should the code return?) a new array with padding
# What are the steps needed to solve the problem?
# IF minimum size is less than the length of the array, return the array
# ELSE minimum size is greater than the array
# Subtract the array size from the minimum size and store in a variable "length to add"
# Make a new array with the size as length to add and the value as value.
#Concatenate two arrays
#Return the new array


# 1. Initial Solution

# NEED TO MAKE THIS NON DESTRUCTIVE

def pad(array, min_size, value = nil)
  arr_var = array
  if arr_var.length >= min_size
  return arr_var
  elsif arr_var.length < min_size
  length_to_add = min_size - arr_var.length
  new_array = arr_var + Array.new(length_to_add,value)
 end
  return new_array.flatten
end


def pad!(array, min_size, value = nil)
  arr_var = array
  if arr_var.length >= min_size
  return arr_var
  elsif arr_var.length < min_size
  length_to_add = min_size - arr_var.length
  array_to_add = Array.new(length_to_add,value)
  new_array = arr_var << array_to_add
 end
  return new_array.flatten!
end


# 3. Refactored Solution

# There are no methods that could simplify our initial solution.

# 4. Reflection