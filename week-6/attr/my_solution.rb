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

# What is a reader method?

# A reader method is one in which the name of the method is the same as the instance variable within the method. Essentially,
# by calling the reader method on an object of the class in question, Ruby will output the information assigned to a variable
# of the exact same name as that of the method. In this way, the method is, in a way, "reading" information stored in a
# variable and outputting it back to the user.

# What is a writer method?

# A writer method is a bit different from a reader method because it can alter the information assigned to the variable in
# the method. Writer methods literally "write" to a variable. These methods normally take in an argument, whose value will
# be the new value of the variable within the method. For example, if we have a writer method called age and it takes in
# an argument called new_age, and within the method we have somehting like instance varalbe @age equals new_age; if we call
# the method age on an instance of the class for this method, and pass it an argument for new_age, then @age will be set
# equal to that new passed in value and will retain that new value for that object.

# What do the attr methods do for you?

# Attr methods help to simplify the syntax of reader/writer methods. They transform what would be three lines of code into
# one. When you see an attr reader method, you know that the name of the method is the same as the name of the variable the
# method refers to within it. Same goes for a attr writer method. We know that the name of the attr writer method is the same
# name as the variable it refers to, and any argument passed to that attr writer method will replace the value of the
# variable within it.

# Should you always use an accessor to cover your bases? Why or why not?

# No not always. Sometimes you don't want a method that both reads and writes, you just want one that reads. If you have all
# methods as read/write, when some should be just read, it may be difficult to debug the program down the line if something
# goes awry with these methods. By differentiating between read/write, you help give a safegaurd against giving other methods
# access to information they might not need to function.

# What is confusing to you about these methods?

# The syntax of attr methods is kind of confusing, because it's hard for me to remember that the name of the method is
# the name of the attr method; I tend to look at the attr syntax and think the name is just referring to a variable. This
# was confusing when looking at some of the examples, particularly when a attr method was called on an object. I was like,
# "wait a minute, where did that method come from!" And then I would look back at the class and realize, "oh yeah, that attr
# method is where they got that name." Not only does the attr method point to a variable of the same name, but it also
# contains the name of the method itself, which is used to call on an object to access the variable within it. Even writing
# that out sounds confusing, but I'm getting the hang of it.