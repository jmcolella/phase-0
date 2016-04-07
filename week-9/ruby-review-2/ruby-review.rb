# Reverse Words


# I worked on this challenge with: Dexter Moran.
# This challenge took me .5 hours.

# Pseudocode

# steps:

# break up the input string into a collection of each individual word from that string
# take each word individually and reverse that word
# then join each individual reversed word back together into one output string


# Initial Solution

def reverse_words(string)
  string_array = string.split(" ")
  string_array.each do |word|
    word.reverse!
  end
  p string_array
  reversed_sentance = ""
  string_array.each do |reverse_word|
    reversed_sentance += reverse_word + " "
  end
  p reversed_sentance.chop
end

# Refactored Solution

def reverse_words(string)
  p string.split(" ").each {|word| word.reverse!}.join(' ')
end




# Reflection