# Create Accountability Groups

# I spent 1.5 hours so far on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# WE WANT TO TAKE AN INPUT ARRAY, BREAK IT INTO SMALL CHUNKS AND PRINT EACH OF THOSE CHUNKS TO THE CONSOLE

# define a method to take a variable with a container of names and return those names as part of separate groups, where each group must have at least three names from the container

# Input: a container of names

# Steps to solve the problem:
#    1. create a variable that is set equal to a container of names, each separate by a comma
#    2. define method
#    3. create variable1 in method equal to first 4 items in the input container
#    4. create variable2 in method equal to next 4 items in the input container
#    5. create variable3 in method equal to next 4 items in the input container
#    6. p "Group # 1:" with variable1
#    7. p "Group # 1:" with variable2
#    8. p p "Group # 1:" with variable3

# Output: the input container of names organized into separate groups, where each group must have at least three names from the input container


# 1. Initial Solution


# 2. Refactored Solution


# Driver Test Code
  

list_of_names = ["John", "David", "Lisa", "Mike", "Leslie", "Aiden"]

def create_acct_group(list_of_names)
    group_1 = list_of_names.pop(3).join(", ")
    group_2 = list_of_names.pop(2).join(", ")
    group_3 = list_of_names.pop(2).join(", ")
  puts "Group # 1: #{group_1}"
  puts "Group # 2: #{group_2}"
  puts "Group # 3: #{group_3}"
end

p create_acct_group(list_of_names)
# 3. Reflection
