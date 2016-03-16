# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a random integer
# Output: a symbol telling the user whether the random integer is low, high or equal to the answer integer
# Steps:

# 1. create a class for the guessing game
# 2. define an initialize method that takes one argument
# 3. create an instance variable set equal to the argument of the initialize method
# 4. define a guess method that takes one argument
# 5. create an instance variable set equal to the argument of the guess method
# 6. create an IF conditional statement in the guess method
#     7. IF the guess argument is lower than the initialize argument, return symbol low
#     8. ELSIF the guess argument is higher than the initialize argument, return symbol high
#     9. ELSE return the symbol correct
#  10. define a boolean method called solved
#  11. create an if conditional statement in the guess method
#     12. IF the guess method instance variable equals the initialize argument, return boolean value true
#     13. ELSE return false


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    @guess = num
    if @guess < @answer
      p :low
    elsif @guess > @answer
      p :high
    else
      p :correct
    end
  end

  def solved?
    if @guess == @answer
      p true
    else
      p false
    end
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    @guess = num
    if @guess < @answer
      p :low
    elsif @guess > @answer
      p :high
    else
      p :correct
    end
  end

  def solved?
    @guess == @answer ? true : false
  end
end


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# The best way I can relate instance variables and methods to the real world is through grammer. Instance variables are liek
# nouns and methods are like verbs. We create/name things with instance variables (or just variables in general) and methods
# actually do things with those variables. By passing a variable into a method as an argument, we are giving that variable
# something to do, and that something is defined by the code in the method.

# When should you use instance variables? What do they do for you?

# Instance variables are very useful when creating a Class objecti in Ruby. An instance variable, represented by the @
# symbol, allows you to create a variable in one method of a class (or just create the variable within the class itself)
# and use the information stored in that variable in other methods/places in the class. This is important because,
# normally, variables defined within a method are local to that method, meaning the object they point to only exists as a
# variable/object relationship within the scope of that particular method. Instance variables are a bit more global than
# that, and allow you to maintain a relationship between variable/object across a numer of methods. So, with instance
# variables, we can create one instance variable in one method and then use that same variable in another method, if
# necessary. This helps to consolidate information and make your code easily readable.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Flow control is how Ruby navigates true and falsehoods to determine what code should be evaluated. Ruby is lazy in that
# it will only evaluate so far until it knows that thing is definitely true or definitely false, and then will return
# whatever it is supposed to based on that evaluation. This is how Ruby navigates through IF, UNLESS, WHILE and UNTIL
# statements; it evaluates the condition as part of the statement and determines if that condition evaluates to true or
# false and then executes whatever code provided based on that evaluation (or moves on to the next portion of the statement
# if there is one, in the case of an IF statement with ESLIF or ELSE conditions).

# I didn't really have much trouble using flow control in this challenge. It came up when defining the guess method, which
# necessiated an IF statement to return the symbols low, high and correct. In that case, when evaluating the argument passed
# into the guess method, Ruby evaluated each conidtion in the IF statement, returning the symbol associated with the
# condition if it were true, or moving on to the next condition if it were false.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# I'm not sure why we are required to return symbols for this code, but the instructions seem to hint this has something
# to do with how symbols are stored in memory. Ruby keeps track of all variables, methods, constants and symbols in this
# big table, which helps for programming efficiency if you were to use one of these items repeatedly. The way Ruby keeps
# track of all these things is by making each one of them a symbol, since symbols are both immutable (can't be altered) and
# unique (one symbol will always have the same object id). This is particularly helpful because Ruby can process symbols
# faster than strings (which could be another way to store items), so it makes running a program more efficient, or at
# least it seems that way. This could be the reason we returned symbols as opposed to strings. They get stored as symbols
# in Ruby's symbol table, are unique because they are symbols, are immutable and help the program process faster.