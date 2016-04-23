# FIBONACCI

# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Input: number
# Output: true or false if input number is part of fibonacci sequence
# Steps:
# create a start point of 0
# create a counter up that adds on top of itself


# Initial Solution

def is_fibonacci?(num)
  fib_array = [0,1]
  fib_counter = 2
  until fib_counter == num + 1
    fib_array << fib_array[fib_counter-1] + fib_array[fib_counter-2]
    fib_counter += 1
  end
  if fib_array.include?(num)
    return true
  end
end

puts is_fibonacci?(8)

# # def fibonacci(num)
# #   actual = num - 1
# #   fib = ((((1+(Math.sqrt(5)))/2)**actual) - (-(1+(Math.sqrt(5)))/2)**(-actual)) / (Math.sqrt(5))
# #   p fib.to_i
# # end

# is_fibonacci?(3)
# Refactored Solution

# 0,1,1,2,3,5,8
#
# p Math.sqrt(5)


# Reflection


