# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
   long_string = list_of_words[0]
   counter = 0
   while counter < list_of_words.length
    if long_string.length < list_of_words[counter].length
      long_string = list_of_words[counter]
    end
    counter += 1
  end
  p long_string
  #return list_of_words.sort {|x,y| y.length <=> x.length}[0]
end

longest_string([])
longest_string([""])
longest_string(["cat"])
longest_string(['ZZZ', 'zzzzz'])
longest_string(['cat', 'aaaaaaa', 'apples'])
longest_string(Array.new(10) { |i| 'a' * (i + 1) }.shuffle)