
# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
   small_num = list_of_nums[0]
   counter = 0
   while counter < list_of_nums.length
    if small_num > list_of_nums[counter]
      small_num = list_of_nums[counter]
    end
    counter += 1
  end
  p small_num
    #print list_of_nums.sort[0]
    #this is the short and way less frustrating way
end

smallest_integer([])
smallest_integer([0])
smallest_integer([-10])
smallest_integer([-10, 0, 10])
smallest_integer([1, 2, 3])
smallest_integer([-10, -20, -30])
smallest_integer((1..100).to_a.shuffle)
smallest_integer((-100..-10).to_a.shuffle)