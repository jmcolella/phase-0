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