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
  return_array = []
  mode_hash.each do |num, freq|
    if freq == mode_hash.values.max
      return_array << num
    end
  end
  p return_array
end

# 3. Refactored Solution

def mode(array)
  mode_hash = Hash.new(0)
  array.each {|num| mode_hash[num] +=1}
  return_array = mode_hash.select {|num, freq| freq == mode_hash.values.max}.keys
  p return_array
end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

# We decieded to convert the input array into a hash because we figured that would be the best way to consolidate any
# repeated numbers from the array and make those keys, and then the frequency those numbers appear would be the corresponding
# values. Then it would just be a matter of finding out which of the values in the hash is the maximum and the print out
# the correspond key as part of an array.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# Again, this one we just pseudocoded by breaking down the problem into general steps to help guide us through the nitty
# gritty of the Ruby code. I would say this led to mixed results. Our general steps helped with formulating how to change
# the input array into a hash, but then we couldn't figure out from our general steps how to then pull the highest values
# and assign their corresponding keys to an array. It was a frustrating process that we had to do a little research to
# get through.

# What issues/successes did you run into when translating your pseudocode to code?

# Biggest issue was iterating over the newly created hash to find the values with the highest number and then return those
# values' associated key as an array. We used an each method to iterate across both key and values in the hash, but we had
# to look up a particular method to get the max integer of all the values since we were having trouble coming up with a
# way to do that otherise (any hints would be welcome). We then went through many different iterations of how to return
# the max key values as an array, and we tried to move pieces inside and out of the each iterator, changing variables,
# concatenating arrays (or what we thought we arrays). Eventually, we realized that we were assigning the value variable
# in our each iterator to the max value, rather than using the "==" comparison operator. Once we got that, everything fell
# into place.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they
# difficult to implement?

# Each was a key method for iterating across the newly created hash. The values.max method was instrumental in helping us
# find the maximum values in the hash. We then found this cool method keys, which we added to the end of our each code
# block. This method keys just returns the key values from a hash as an array. So, yeah, that basically did exactly what
# we needed it to do, and combined with our block to located the max values in the hash, it allowed us to efficiently
# return an array of just those key values.