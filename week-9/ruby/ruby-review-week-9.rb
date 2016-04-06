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

# def is_fibonacci?(num)
#   counter = 0
#   fib = ((((1+(Math.sqrt(5)))/2)**counter) - (-(1+(Math.sqrt(5)))/2)**(-counter)) / (Math.sqrt(5))
#   until counter == num
#     if fib == num
#       p true
#     else
#       p false
#     counter += 1
#     end
#   end
# end

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


