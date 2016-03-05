# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  start = list_of_integers[0]
  counter = 0
  between = []
  while counter < list_of_integers.length
    if start >= lower_bound && start <= upper_bound
      between << list_of_integers[counter]
    end
  counter +=1
  start = list_of_integers[counter]
  end
  p between.length
end

count_between([], -100, 100)
count_between((1..10).to_a,100, -100)
count_between([1,1,1], 1, 1)
count_between([-10, 1, 2], 0, 100)
count_between([1, 2, 200], 0, 100)
count_between(Array.new(100) { rand(101) - 50 }, -50, 50)