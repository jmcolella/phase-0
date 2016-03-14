# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# Pseudocode

# Input: a collection of integer grades

# Steps to solve

# 1. define a method that takes a collection as its argument
# 2. iterate through the collection to add each of its items cumulatively
# 3. save step 2 as a new variable
# 4. Divid variable from step 3 by the length of the collection
# 5. pass variable through an IF statement
# 6. IF variable is less than 60, return the string "F"
# 7. ELSIF variable is greater than or equal to 60 and less than 70, return string "D"
# 8. ELSIF variable is greater than or equal to 70 and less than 80, return string "C"
# 9. ELSIF variable is greater than or equal to 80 and less than 90, return string "B"
# 10. ELSE return string "A"

# Output: a letter grade corresponding to the average of the input collection of integer grades


# Initial Solution

# def letter_grade(number_grades)
#   counter = 0
#   total = 0
#   while counter < number_grades.length
#     total = total + number_grades[counter]
#     counter += 1
#   end
#   average = total / (number_grades.length)
#   if average < 60
#     p "F"
#   elsif average >= 60 && average < 70
#     p "D"
#   elsif average >=70 && average < 80
#     p "C"
#   elsif average >= 80 && average < 90
#     p "B"
#   else
#     p "A"
#   end
# end

# letter_grade([80, 90, 100, 70, 85])

# Refactored solution

def get_grade(number_grades)
  average = (number_grades.inject {|acc, num| acc + num}) / (number_grades.length)
  if average < 60
    p "F"
  elsif average >= 60 && average < 70
    p "D"
  elsif average >=70 && average < 80
    p "C"
  elsif average >= 80 && average < 90
    p "B"
  else
    p "A"
  end
end

letter_grade([80, 90, 100, 70, 85])
