# Create Accountability Groups

# I spent 1.5 hours so far on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# define a method to take a variable with a container of names and return those names as part of separate groups, where each group must have at least three names from the container

# Input: a container of names

# Steps to solve the problem:
#    1. create a variable that is set equal to a container of names, each separate by a comma
#    2. define method to create accountable groups
#    3. create a new variable equal to the container of names divided into smaller containers of 5
#    4. For each smaller container in the larger container of names, print to the console the names contained in that smaller container

# Output: the input container of names organized into separate groups, where each group must have at least three names from the input container


# 1. Initial Solution

# list_of_names = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Ben Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "Ruo Yu Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

# def create_acct_group(list_of_names)
#   groups_of_names = list_of_names.each_slice(5).to_a
#   groups_of_names.each {|group| puts "Group: #{group.join(", ")}"}
# end

# create_acct_group(list_of_names)

# 2. Refactored Solution

list_of_names = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Ben Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "Ruo Yu Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

def create_acct_group(list_of_names)
  list_of_names.shuffle!
  groups_of_names = list_of_names.each_slice(5).to_a
  groups_of_names.each {|group| puts "Random Group: #{group.join(", ")}"}
end

create_acct_group(list_of_names)


# 3. Reflection
