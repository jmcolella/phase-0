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
         @card_array[index] = num.to_i * 2
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
    split_double_digits(@card_array)
    add_it_up(@new_array)
  end

end

# Reflection

# What was the most difficult part of this challenge for you and your pair?

# The most difficult part of this challenge was figuring out how to split up the double digit mumbers after multiply
# every other index by 2. My pair and I had trouble with an IF statement we were trying to write. Our original statement
# only had one condition, which was, for each num in the array that we created, split any num if the num is greater than or
# equal to 10. When we did this, though, the each method replaced "nil" for any num that failed the IF statement. So we had
# to re-engineer the way that IF statement was set up to create a condition for num that is less than 10. This is also not
# mentioning that we had much trouble getting all of the methods/instance variables to work together and carry over info
# from one method to the other. That was just a matter of tweaking some built-in methods (map instead of each for our split
# digits method, for example) and being conscious of the instance variables we were using in each method.

# What new methods did you find to help you when you refactored?

# Inject is a really great method to accumulate data in an array. It's very elegant, since it can be placed on one line, and
# it replaced about 4 lines of code from the intial solution. There's no need to set a "total" counter and have that equal
# itself plus each item in the array, when using each to iterate. Inject essentially combines each with this accumulation
# technique, where you pass a block of code to inject with two variables, one for the accumulator and the other is each item
# in the array, and then you give it an operation for those to variables to interact with (in this case, it was addition).
# Inject is also cool because you can pass it an argument, which will become the initial value of the accumulator, so say
# we needed to initially add 2 to the whole array before adding up, just pass 2 as an argument to inject and it will add
# 2 to the first item in the array, and then work from there, giving us our desired answer.

# What concepts or learnings were you able to solidify in this challenge?

# I think my pair and I definitiely solidified our understanding of instance variables and how to make them communicate
# across various methods. We also learned the power of calling methods in another method, and using instance variables
# as the arguments to pass to these method calls, so you can build a really powerful method without making it too confusing.
# This is the case with our check_card method, which is just an accumulation of the other methods we created in the class,
# calling each one with an instance variable from the class as an argument. This allowed us to split up the steps of this
# problem into bite-size chunks, and then bring it all together in one final method. We also got a better handle on IF
# statments nested within each methods and how we should write those out so the items in the array we don't want changed
# stay the same, and the items we do want changed will change.