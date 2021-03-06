# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
# define a method to take an integer and return that integer as a string with commas
# Input: an integer
# Steps to solve the problem:
	# 1. Convert the input integer into a string and save as a new variable
	# 2. Split the new variable into a container where each character from the integer as a string is one individual item in the container
	# 3. Conditional statement IF container is less than or equal to length 3, return the container as a joined string with no commas
	# 3. Conditional statement ESLIF container is greater than or equal to 4 length and less than or equal to 6 length, return the container as a joined string with 1 comma between index -3 and index -4
	# 4. Conditional statement ESLIF container is greater than or equal to 7 length and less than or equal to 9 length, return the container as a joined string with 1 comma between index -3 and index -4 and 1 comma between index -6 and index -7 (2 commas total)
	# 5. Conditional statement ESLIF container is greater than or equal to 10 length and less than or equal to 12 length, return the container as a joined string with 1 comma between index -3 and index -4, 1 comma between index -6 and index -7 and 1 comma between index -9 and index -10 (3 comma total)
	# 6. Conditional statement ELSIF container is greater than or equal to 13 length and less than or equal to 15 length, return the container as a joined string with 1 comma between index -3 and index -4, 1 comma between index -6 and index -7, 1 comma between index -9 and index -10 and 1 commas between index -12 and index -13 (4 comma total)
# Output: the input integer as a string with commas separating hundreds from thousands from millions and so on


# 1. Initial Solution

# This method is incorrect for this challenge, see the one below it
# def separate_comma(integer)
#   integer_string = integer.to_s
#   integer_array = []
#   counter = 0
#   while counter < integer_string.length
#     integer_array[counter] = integer_string[counter]
#     counter += 1
#   end
#   if integer_array.length <= 3
#       p integer_string
#   elsif integer_array.length >=4 && integer_array.length <=6
#     p integer_array.insert(-4, ",").join
#   elsif integer_array.length >=7 && integer_array.length <=9
#     p integer_array.insert(-4, ",").insert(-8, ",").join
#   elsif integer_array.length >=10 && integer_array.length <=12
#     p integer_array.insert(-4, ",").insert(-8, ",").insert(-12, ",").join
#   elsif integer_array.length >=13 && integer_array.length <=15
#     p integer_array.insert(-4, ",").insert(-8, ",").insert(-12, ",").insert(-16, ",").join
#   end
# end

def separate_comma(integer)
  integer_string = integer.to_s
  integer_array = []
  counter = 0
  while counter < integer_string.length
    integer_array[counter] = integer_string[counter]
    counter +=1
  end
  rev_integer_array = integer_array.reverse
  group_integer_array = []
  counter = 0
  until counter == (rev_integer_array.length + counter)
    group_integer_array[counter] = rev_integer_array.shift(3).join
    counter += 1
  end
  p group_integer_array.join(",").reverse
end

# 2. Refactored Solution

def separate_comma(integer)
  integer_string = integer.to_s
  integer_array = integer_string.split(//)
  p integer_array.reverse.each_slice(3).map {|int| int.join}.join(",").reverse
end



# 3. Reflection

# After getting feedback from the DBC guide, it was clear that I went about this challenge the wrong way. I was supposed
# to make use of some Ruby methods to iterate across the input integer, but I didn't really do that, instead I passed
# the integer through a large conditional IF statement, testing it for how long it is and then inserting commas based on
# that information. That method isn't very effective when dealing with ANY size integer, because then you'd have to make
# an infinite IF statement to take into account all possible numbers, which is not feasible. So, I went back to the
# drawing board on this one. I knew that the method "each_slice" would come in handy, because that can cut up the integer
# into specific chunks, which I could then join back together to output the comma-separated result. The big issue I was
# having was slicing up the input integer (which I converted to an array) and then saving that into a new array, so that
# it would be an array of arrays (the mini-arrays coming from the each_slice and the big array being the container). I
# knew the map method would be useful for this, but man was I having a hard time actually implementing it. After about 30
# minutes or so, I did a little snooping on Stack Overflow that led me to the syntax for combining each_slice and map. Once
# I had that, I figured I could join the mini-arrays together using the join methodm with a comma as its argument, but I
# was having an issue. When iterating through the integer normally using each_slice, it would slice it up by three starting
# with the first number and going down, with the last slice being the left over numbers, even if they didn't equal three.
# So, when I went to join this stuff, it didn't look right. For example, for the integer "50000000", it would end up like
# this: 500,000,00, which is incorrect. So, I did more snooping on Stack Overflow, and I found that if you reverse the
# integer before slicing, then reverse it back after words, it solves the problem by effectively iterating from the "end"
# of the integer; we're just tricking Ruby into thinking it's the front. I feel like this process was kind of complicated
# for this challenge, which DBC made it seem like was pretty straight forward. I need to ask for some more help with that
# before things really get intense.

# What was your process for breaking the problem down? What different approaches did you consider?

# First thing I knew I had to do was change the integer being passed into the method into a string, which would be more maleable
# than an integer when trying to iterate. Once I had this string, I knew I could break it up into an array, where each character
# in the string would be a separate item in the array. Once I had that, then I could iterate over the array to find the index
# number where I wanted the comma to be inserted and then return that new array as a string. The hard part was taking this
# general process and finding the Ruby syntax to accomplish it.

# Was your pseudocode effective in helping you build a successful initial solution?

# My pseudocode was helpful in making me look at the solution in tiny blocks. That is the problem I've been having so far with
# Ruby: I complicate the challenge by thinking about too many moving pieces at once, even adding in stuff that is tangential
# to the problem at hand. By taking a moment to step back and use pseudocode as a way to actually write out the steps to solve
# the challenge at hand, it has helped me brainstorm what methods I could use in Ruby or other syntax that would be helpful on
# a more granular scale, rather than trying to combine methods/variables or other Ruby syntax in a more complicated afair.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation
# to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# In my refactored solution I made use of the split method in Ruby, which I found in the Ruby docs. It was very easy to locate it
# just by going under the Array section and looking for something that would split up a string and store each part into an array. I
# wouldn't say this method significantly changed how my code works, it just streamlined a process I used in my intial solution, which
# was to use a counter to iteratre over the string and add each successive character from the string as a new index number in an empty
# array, which I then used to insert commas.

# How did you initially iterate through the data structure?

# I used a counter to iteratre over the string version of the initial integer passed into the method. Before iterating, I
# created an empty array to store each character of the string as a new index. I wrote that while the counter was smaller
# than the length of the string itself, that each index numbered counter of the blank array would equal the corresponding index
# numbered counter in the string. I then had the counter increase by one and the loop would stop when the counter reached the length
# of the string, leaving me with the empty array filled with each character from the string. Then I passed that array through a large
# conditional IF statement to determine how long it is and, based on that, insert commas as appropriate.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# I like my refactored solution because I took out this big IF statement and made it its own method, which I then called in my
# separate_comma method. I think it's easier to read than my initial solution because it demonstrates that my program is a series
# of two major steps: converting the integer into an array and then passing that array through an IF statement to insert the appropriate
# number of commas. I think this is illustrated well through the two methods, and then it comes together when I called the insert_comma
# method in the separate_comma method.
