# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
   large_num = list_of_nums[0]
   counter = 0
   while counter < list_of_nums.length
    if large_num < list_of_nums[counter]
      large_num = list_of_nums[counter]
    end
    counter += 1
  end
  p large_num

  #return list_of_nums.sort {|x,y| y <=> x}[0]
end

largest_integer([])
largest_integer([0])
largest_integer([-10])
largest_integer([-10, 0, 10])
largest_integer([1, 2, 3])
largest_integer([-10, -20, -30])
largest_integer((1..100).to_a.shuffle)
largest_integer((-100..-10).to_a.shuffle)
