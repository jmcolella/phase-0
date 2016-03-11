# Research Methods

# I spent 1.5 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 2, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 5, "Annabelle" => 0}

def my_array_sorting_method(i_want_pets)
  p i_want_pets.sort_by {|item| item.to_s}
end


def my_hash_sorting_method(my_family_pets_ages)
  p my_family_pets_ages.sort_by {|key, value| value}
end


# Identify and describe the Ruby method(s) you implemented.
#
# I implemented the "sort_by" enumerable method. Whereas the "sort" method uses the "<=>" comparative operator
# to compare each item in the array against each other, "sort_by" does something a little different. Sort_by takes
# a block of code and maps those actions to a new, intermediary array. So, for the first method to sort the i_want_pets
# array, sort_by turned every single "item" to a string and mapped that to a new array. Then, sort_by sorts this new,
# intermediary array, but then returns this sorted array in the form of the original array. That is why we get the two
# integers in the original array returned as integers after going through the sort_by method, even though the block of
# code turned each item into a string.
#
# The same idea occurs for the hash, where sort_by looks at the block passed to it and sorts based on whichever component
# of the hash is indicated, the key or value. In our case, I wanted to sory by values, so for each |key, value| I wanted
# the method to sort_by value, as stated in my block. The sort_by method called on a hash returns the key/value pairs as
# smaller arrays within a larger array containing all of the key/value pairs.

# Tips and tricks for Ruby Docs

# I'll be honest, I did not think sort_by was gunna be the right method, so I didn't even bother at first. I knew I had to
# convert those integers to strings to compare using just "sort", but then I was having a hard time getting those integers
# as strings back to integers so the rspec test would pass. I then just did a Google search, looked at Stack Overflow and
# saw that sort_by would solve all my problems. Then I snopped around some more on Stack Overflow and found a decent enough
# explanation of what sort_by is actually doing, which I described above. Go Internet.