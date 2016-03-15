# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent .75 hours on this challenge.

# Pseudocode

# Input: a collection of random strings
# Output: return one of the strings in the collection randomly
# Steps:

# 1. define a class called Die
# 2. define an initialize method that takes one argument
# 3. create an instance variable equal to the name of the argument for initialize
# 4. raise an argument error if the input is an empty collection
# 5. define a method for the sides of the die
# 6. print the length of the instance variable from the initialize method
# 7. create a method to "roll" the die
# 8. refer to the initialize instance variable and shuffle it
# 9. return the item with index 0 from the initialize instance variable


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels == []
      raise ArgumentError, "provide a populated array with strings"
    end
  end

  def sides
    p @labels.length
  end

  def roll
    @labels.shuffle!
    p @labels[0].to_s
  end
end


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError, "provide a populated array with strings" unless @labels != []
  end

  def sides
    p @labels.length
  end

  def roll
    @labels.shuffle!
    p @labels[0].to_s
  end
end





# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need
# to change much logic to get this to work?

# One of the main differences is that the sides method is not simply an attribute reader variable within the class, which it
# was for the first die challenge. That was the case because the argument from initialize was the actual number of sides, so
# when creating the method "sides", all you had to do was create a new instance variable and set it equal to the name of the
# method. In this case, our initialize argument is an array, not a number, so the sides of the die for that array is the
# length of that array. So, as you can follow, our sides method, in order to tell us how many sides this die has, needs to
# get the length of that array from the initialize method argument. A slight difference that actually confused me when first
# attacking this problem; I thought we could simply set an instance variable @sides to equal @labels, but that doesn't really
# tell us how many sides the die has.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# You know, I didn't even think of just wholesale copy-pasting the first challenge and making small tweaks to update, but now
# that you allude to it with this question, it kinda blows my mind. I certainly referred back to that first challenge, and
# I'm happy my code was fairly easy to follow from last week since it helped me refresh how to raise an argument and such. In
# that sense, it's really important to keep your code clear and concise (if possible) just in case something like this arises
# where you're working on a project related to something you did before and want to use that previous work to make the second
# process be faster and potentially easier.

# What new methods did you learn when working on this challenge, if any?

# I didn't learn any new methods since I employed almost the same ones from the previous challenge (shuffle) and I used one
# I already new (length).

# What concepts about classes were you able to solidify in this challenge?

# I was able to solifidy my understanding of instance variables when used within a class. I was skeptical that calling the
# instance variable for the initialize input in the roll method would actually work as if the instance variable were just an
# array itself. Of course, there was nothing to be skeptical about, and Ruby did its magic and treated that instance
# variable as I wanted it to (like an array) and shuffled it for me and called the 0 index as I wanted. Instance variables
# are just so powerful and really useful when creating a class that has many methods that require information from one
# another.
