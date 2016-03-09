# Create Accountability Groups

# I spent 3.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# define a method to take a variable with a container of names and return those names as part of separate groups, where each group must have at least three names from the container

# Input: a container of names

# Steps to solve the problem:
#   1. create a variable that is set equal to a container of names, each separate by a comma
#   2. define method to create accountable groups
#   3. Create a counter = 0
#   4. create a new empty array
#   5. LOOP through empty array such that 4 names from the input container will be added to the array as each progrssive index number counter
#   6. Print each group of 4 names from the new array to the console with a line to denote that each one is a group

# Output: the input container of names organized into separate groups, where each group must have at least three names from the input container


# 1. Initial Solution

#list_of_names = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Ben Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "Ruo Yu Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

#def create_acct_group(list_of_names)
#  counter = 0
#  group_of_names = []
#  until counter == (list_of_names.length + counter)
#    group_of_names[counter] = list_of_names.shift(4).to_a
#    counter +=1
#  end
#  group_of_names.each {|group| p "Group: #{group}"}
#end

#create_acct_group(list_of_names)

# 2. Refactored Solution

list_of_names = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Ben Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "Ruo Yu Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

def create_acct_group(list_of_names)
  list_of_names.shuffle!
  groups_of_names = list_of_names.each_slice(5).to_a
  groups_of_names.each {|group| puts "Random Group: #{group.join(", ")}"}
end

create_acct_group(list_of_names)


# 3. Reflection

# What was the most interesting and most difficult part of this challenge?

# The most difficult thig was figuring out how to split up the names and return them as separate groups! It took me forever to
# even get close at a solution. I went through many different iterations of pseudocode, finally realizing it would be best
# to hold all the names in an array and then pass that array into a method that would then split up the large array into mini
# arrays of groups and then print out those mini-arrays. That's what I accomplished with the shift method, which was one of the
# more interesting methods I implemented in the challenge. Essentially, shift is called on an array and takes a number as an 
# argument, and whatever that number is will be the amount of items from the beginning of the array clipped off and saved to a 
# new array, or returned. Very cool stuff.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
  
# This challenge actually made me lose my confidence completely in writing pseudocode. I had a really hard time breaking down
# the challenge of separating a list into small chunks. I think I was thinking too much in Ruby terms and refused to write anything
# in my pseudocode that I knew I could not accomplish in Ruby syntax with my current knowledge. I think I need to let go of that
# fear or whatever it is and just focus on breaking down the problem into readable English and figure out the Ruby syntax later, once
# I know the steps I need to solve the problem.

# Was your approach for automating this task a good solution? What could have made it even better?

# I think my approach of making the list an array, then breaking that array down into smaller arrays, and then printing those smaller
# arrays as the groups was a solid solution. I like working with arrays because they are fairly maleable in Ruby and can be iterated
# over very easily, which helped in organizing and printing the groups out. What would really make my solution better is if I could
# get a number added to each Group name, like 'Group 1', 'Group 2', 'Group 3', etc., but I couldn't figure out how to simultaneously
# update the group number as well as the names in the group while iterating using each.

# What data structure did you decide to store the accountability groups in and why?

# I used an array because I knew that I just had to iterate over a simple list of names; in other words, for each name there was no
# value associated with that name, so I didn't have to worry about using hash syntax or anything, I could just keep them in an array
# listed one after the other. Also, by keeping them in an array, I could combine several indexes in the array into one array, so my 
# original array would become a list of multiple arrays, and each of this internal arrays would be a group of their own. Then it would
# just be a matter of printing each of those internal arrays to the console to get my groups.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned this badass enumerable called each_slice. What this thing does is, when passed to an array with an argument, say the integer 4,
# each_slice will "slice" out the first 4 indexes in the array and either return that value or save it to a new array. This also means
# that the original array is now 4 indexes shorter from before the slice. This worked out really well because it took my intial shift
# idea with the counter and consolidated it into one line of code! Really great stuff!
