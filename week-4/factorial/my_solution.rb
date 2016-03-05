# Factorial

# I worked on this challenge with: Talal Talhouk.


# Your Solution Below
def factorial(number)
  if number < 0
    return "Error, that is not a positive integer."
  else
    counter = number.to_i
  end
  total = 1
  while counter > 0
    total = total*counter
    counter -= 1
  end
  return total
end





# Factorial = num * num-1 * num-2 * num-3 * etc... until num=1
# Input: non negative number (whole numer, no float)
# Outout: factorial of that non negative number, unless the numer is zero, we should get 1
# First step: evaluate the input to ensure that it is a whole number as an integer (not a string); if input is a negative number, return an error message
# Second step: convert the input to an integer
# Third step: check if the input is zero; if it is, return 1
# Fourth step: create a counter that counts down from the value of the input
# Fifth step: while counter is greater than zero, multiply the input by each counter
# Sixth step: return total value of fifth step, which should be before the counter hits zero
