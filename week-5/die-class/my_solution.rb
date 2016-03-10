# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# 0. Pseudocode

# create a class die that can create a custom die based on number of sides and can "roll" the die by returning a random side number

# Input: number of sides for a new die object; roll for die object
# Output: random number from roll of the new die object
# Steps:
  # 1. Create a new class of Die
  # 2. Initialize class of die with an argument for number of sides
  # 3. Create an exception if number of sides input for a new die object is less than or equal to 1
  # 4. Save number of sides as variable to be used throughout the class
  # 5. Create new method that will return variable for sides
  # 6. Create new method for roll that will return a random number from the variable of sides


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError, "Need a number greater than 1 for sides" unless @sides > 1
  end

  def sides
    p @sides
  end

  def roll
    sides_array = (1..@sides).to_a
    sides_array.shuffle!
    p sides_array[0]
  end
end

# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError, "Need a number greater than 1 for sides" unless @sides > 1
  end

  attr_reader :sides

  def roll
    sides_array = (1..@sides).to_a
    sides_array.shuffle!
    p sides_array[0]
  end
end


# 4. Reflection

# What is an ArgumentError and why would you use one?

# An ArgumentError is an instance of the Exception class that is raised when using the wrong number of
# arguments. This can occur if you call more arguments to a mathod that it is defined to take it. You might
# raise an ArgumentError in order to give more specific information about the error occuring in your program.
# It seems Ruby's default descriptions for various exceptions are quite vague, but if you raise ArgumentError,
# or another instance of the class Exception, you can add a more personalized error message that can help users
# or yourself pinpoint what exactly is going wrong if an error occurs while running your program.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I didn't really implement any new methods. I had used to_a (which translates an object into an arrray) and the
# shuffle method before in the accountability group challenge. I was actually looking for an array method that
# would print any random index from that array, but I wasn't able to find one.

# What is a Ruby class?

# A Ruby class is an object with defined methods within it that can be called on any object that is an instance
# of that class. I like to think of a class as the ground rules for any object of that class. For example, array
# objects can act the way they do because of the definitions set forth in the Array class. A Ruby class gives
# structure to any instance objects of that class.

# Why would you use a Ruby class?

# Ruby classes are very powerful because they are a total collection of the methods that can be called on any
# instance object of that class. This is powerful because the type of methods that can be called on an object
# seem to dictate what that particular object is capable of doing in a program. If one were to use a Ruby class
# to create a completely new class, like for our Die example, we could use the ability of the class to create a
# clew of custom methods that could be applied to our new class and allow us to execute a particular type of
# program without having to repeat much syntax. I think using Ruby classes truly comes in handy when you want
# to customize a program with a class that doesn't already exist in Ruby and give that class a bunch of custom
# methods that can be called on objects of that class within a program.

# What is the difference between a local variable and an instance variable?

# A local variable exists within a limited scope whereas an instance variable has a much large scope and can be
# used in many different parts of a program. For example, if I create a method that takes in an integer as an
# argument, and set that integer to the local varialbe "variable_a" within the method, that variable
# "variable-a" can only be accessed within the scope of that method. If I try to call "variable-a" outside of
# that particular method, Ruby will spit back an error saying that that variable is undefined. To contrast with
# that, an instance variable "variable-a" set equal to the integer input for a method can be used within that
# method and outside of it. We could use this instance variable "variable-a" to save some piece of data to then
# call in another method without having to repeat the data itself. It's a create tool for holding on to
# information and then using that information anywhere in your program.

# Where can an instance variable be used?

# Instance variables can be used within methods that they are not originally defined. They can be used in
# classes, as well as in the main Ruby area (self). Once you define an instance variable, it can be used
# anywhere within the grouping of objects to which it belongs.