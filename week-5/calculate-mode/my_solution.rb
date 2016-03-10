# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of numbers or strings
# What is the output? (i.e. What should the code return?) an array of the most frequent values from the input array
# What are the steps needed to solve the problem?
# 1. Create a blank hash
# 2. Iterate through the input array such that each index in the array is a key and the default value is one, unless that index value appears again and the value will increase by one
# 3. Iterate through the newly created hash and grab the keys that have the highest total value
# 4. Return the keys found in step 3 as an array


# 1. Initial Solution

def mode(array)
  mode_hash = Hash.new(0)
  array.each do |num|
    mode_hash[num] +=1
  end
  return_array = mode_hash.select {|num, freq| freq == mode_hash.values.max}.keys
  p return_array
end

# find_mode([1,2,3,3,3,4,5,5,5,])



# 3. Refactored Solution

#


# 4. Reflection