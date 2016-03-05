# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
   short_string = list_of_words[0]
   counter = 0
   while counter < list_of_words.length
    if short_string.length > list_of_words[counter].length
      short_string = list_of_words[counter]
    end
    counter += 1
  end
  p short_string
  #return list_of_words.sort_by {|x| x.length}[0]
end

shortest_string([])
shortest_string([""])
shortest_string(["cat"])
shortest_string(["cat","zzzzzzz", "apples"])
shortest_string(Array.new(10) { |i| 'a' * (i + 1) }.shuffle)
