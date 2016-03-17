# Your Names
# 1) John Colella
# 2) Gabriel Zurita

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
#   keep hash as is; this creates our library of items and ingredients
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # deleted error_counter and the corresponding if statement for the argument error
  # error_counter = 3

  # deleted the each method and replaced with has_key. Since the each method is no longer needed, the error_counter became obsolete

# refactored the each method to create this:
  if library.has_key?(item_to_make)
    serving_size = library.values_at(item_to_make)[0]
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  remaining_ingredients = num_of_ingredients % serving_size
  # added a suggested items feature to tell us how many more ingredients we need to make another item, if there are remaining ingredients
  suggested_items = serving_size - remaining_ingredients

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: we need #{suggested_items} more ingredients to make another #{item_to_make}."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

# I learned that bad code is really hard to parse out! My pair and I were getting
# confused with the initial each method, which compared the calling of a key from the
# library hash that defaulted to nil and comparing it to a key call that had a value.
# I was confused by the fact that when you call each on a hash and only give it one
# variable to evaluate for each key/value pair, that that variable is set equal to the
# key/value pair as an array; so, if you try to call that array pair as a key of the
# hash to find the resulting value, it will go to nil. Then, by comparing it to a key
# call that does exist, it allows that error_counter to go down and skip the error. That
# was the hardest thing to unravel; it was really frustrating, but so satisfying when we
# eventually figured it out.

# Did you learn any new methods? What did you learn about them?

# I learned about the .has_key? method. This nifty method, when called on a hash with an
# argument will determine if that argument exists in the hash as a key and return true if
# it does and false if it doesn't. This method allowed us to greatly simplify the messy
# each method and error_counter, allowing us to efficiently check it the item passed into
# our method existed in our library hash or not.

# What did you learn about accessing data in hashes?

# I mentioned it above, but I learned that, when calling the each method on a hash with
# only one variable, that variable will include both the key and value in the key/value
# pair as an array. So, if you were to then try to access that variable in the hash as if
# it were a key, instead of passing through the name of the key (which is what I
# expected), it actually passes through this array. Usually, an array like that won't be
# a key in the hash, so the returned value would be nil.

# What concepts were solidified when working through this challenge?

# Using a counter and the each method on a hash were really drove in with this one.
# Also, trying to explain code in its most simple, layman terms was something I worked on
# and my guide pushed me to try and do that, which was very beneficial. This was also the
# first time where I felt I was more skilled/grasping the concepts better than my pair,
# so I tried to actively work on keeping pace with my pair and not blurt out answers to
# a solution as well as trying to explain everything I was doing in plain English the
# best I could. I'll also say that Argument Error raising was soldified a bit more, in
# the sense that when you raise an Argument, the method immediately exits out. I didn't
# 100% grasp that concept and thought we could just replace the Argument Error with a
# regular statement, but I was reminded that the method would still continue to work and
# another error would just arise later due to the input that should have raised and
# error to begin with not working well with the remaining code in the method.