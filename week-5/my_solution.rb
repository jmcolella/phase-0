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

def separate_comma(integer)
  integer_string = integer.to_s
  integer_array = integer_string.split(//)
  if integer_array.length <= 3
      p integer_string
  elsif integer_array.length >=4 && integer_array.length <=6
    p integer_array.insert(-4, ",").join
  elsif integer_array.length >=7 && integer_array.length <=9
    p integer_array.insert(-4, ",").insert(-8, ",").join
  elsif integer_array.length >=10 && integer_array.length <=12
    p integer_array.insert(-4, ",").insert(-8, ",").insert(-12, ",").join
  elsif integer_array.length >=13 && integer_array.length <=15
    p integer_array.insert(-4, ",").insert(-8, ",").insert(-12, ",").insert(-16, ",").join
  end
end

# 2. Refactored Solution




# 3. Reflection
