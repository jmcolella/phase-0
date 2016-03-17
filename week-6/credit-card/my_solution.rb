# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent 2 hours on this challenge.

# Pseudocode

# Input: A group of integers
# Output: true or false
# Steps:
#Check how many integers we have.
#If it's not 16, raise an ArgumentError
#If it is, assign the numbers to an instance variable
#Method: Convert group of integers into an array -- set to an instance variable
#Method: Start at index -2, multiply that value by two,  and iterate backwards through the array every two elements, multiplying each one by the value of 2 -- set new array to an instance variable
#Method: Iterate over the array, if an integer is greater than or equal to 10, split it up. -- set to instance variable
#Method: Iterate over the array and add everything up -- set to instance variable
#Method: If that instance variable is divisible by 10, return true, else return false



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError, "not a complete credit card number"
    else
      @card_number = number
    end
  end

  def check_card
  # make_array
    @card_array = @card_number.to_s.split(//)

  # multiply_by_two
    @card_array.each_with_index do |num, index|
      if -index % 2 == 0
        @card_array[index] = num.to_i * 2
      end
    end

  # split_double_digits
    @new_array = @card_array.map do |num|
      if num.to_i < 10
        num
      elsif num.to_i >= 10
        num.to_s.split(//)
      end
    end
   @new_array.flatten!

  # add_it_up
    total = 0
    @new_array.each do |num|
      total += num.to_i
    end
    if total % 10 == 0
      p true
    else
      return false
    end
  end
end

# Refactored Solution

class CreditCard
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError, "not a complete credit card number"
    else
      @card_number = number
    end
  end

  def make_array(card_number)
    @card_array = @card_number.to_s.split(//)
  end

  def multiply_by_two(card_array)
    @card_array.each_with_index do |num, index|
      if -index % 2 == 0
        @multiply_array = @card_array[index] = num.to_i * 2
      end
    end
  end

  def split_double_digits(multiply_array)
    @new_array = @card_array.map do |num|
      if num.to_i < 10
        num
      elsif num.to_i >= 10
        num.to_s.split(//)
      end
    end
   @new_array.flatten!
 end

  def add_it_up(new_array)
    total = @new_array.inject {|acc, num| acc + num.to_i}
    if total % 10 == 0
      p true
    else
      return false
    end
  end

  def check_card
    make_array(@card_number)
    multiply_by_two(@card_array)
    split_double_digits(@multiply_array)
    add_it_up(@new_array)
  end

end


# Reflection