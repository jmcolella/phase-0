#Attr Methods

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# Pseudocode

# Input: a new instance of an object for class Greetings
# Output: the string as part of the hello method in class Greetings
# Steps:

# 1. create a class for name data
# 2. create an attribute reader for a variable name
# 3. initialize class with an instance variable name set equal to my name
# 4. close all methods and end class
# 5. create a class for greetings
# 6. initialize greetings class with an instance variable set equal to a new name class object
# 7. define a method called hello that will print a greeting with the name initialized in the name class

class NameData
  attr_reader :name

  def initialize
    @name = "John"
  end
end


class Greetings
  def initialize
    @greeting_name = NameData.new
  end

  def hello
    p "Hello #{@greeting_name.name}! How wonderful to see you today."
  end
end

greeting = Greetings.new
greeting.hello


# Reflection