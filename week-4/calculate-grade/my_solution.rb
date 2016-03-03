
# Calculate a Grade

# I worked on this challenge with: Shaun Sweet.


# Your Solution Below
def get_grade(grade)
  if grade < 60
    return "F"
  elsif grade > 60 && grade < 70
    return "D"
  elsif grade > 70 && grade < 80
    return "C"
  elsif grade > 80 && grade < 90
    return "B"
  else
    return "A"
  end
end