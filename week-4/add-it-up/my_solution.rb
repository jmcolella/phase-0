# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Talal Talhouk.
# 0. total Pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:

# Steps to solve the problem.
=begin
1. Input expected is a series of integers
2. Output should be the total of all the numbers added together
3. Create a method that accepts a group of integers
4. Check each input for integers and add them together using a counter that starts at 0
    and increments up by 1 until we reach the end of the inputs.
5. Return the total value
=end

# 1. total initial solution
=begin
def total(num)
  counter=0
  sum=0
  while counter < num.length
    sum = sum+num[counter]
    counter += 1
  end
  return sum
end
=end

# 3. total refactored solution
def total(num)
  return num.inject(0){|add , n| add+n}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Expecting and series of strings
# Output: Sentance with the first letter capitalized and end with a "."
# Steps to solve the problem.
=begin
1. Define a method that accepts a series of strings and convert anything that is not a string
2. Take every string and put a space in between and add the next string to it until we reach the end of the inputs
3. Capitialize the sentance string and place a "." at the end
4. Return the sentance string
=end

# 5. sentence_maker initial solution
=begin
def sentence_maker(word)
  counter=1
  sentence=word[0].capitalize + " "
  while counter < word.length
    sentence=sentence+word[counter].to_s
    if counter==word.length-1
      sentence=sentence+"."
    else
      sentence=sentence+" "
    end
    counter +=1
  end
  return sentence
end
=end

# 6. sentence_maker refactored solution
def sentence_maker(word)
  sentence=word.join (' ')
  return sentence.capitalize+"."
end