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
  puts list_of_words.sort_by {|x,y| y <=> x}[0]
end

longest_string([])
longest_string([""])
longest_string(["cat"])
longest_string(['ZZZ', 'zzzzz'])
longest_string(['cat', 'aaaaaaa', 'apples'])
longest_string(Array.new(10) { |i| 'a' * (i + 1) }.shuffle)