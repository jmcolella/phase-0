# RELEASE 2: NESTED STRUCTURE GOLF

# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash [:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# INITIAL SOLUTION
# number_array.collect! do | outer|
#   if  outer.kind_of?(Array)
#     outer.collect! do |inner|
#       inner + 5
#     end
#   else
#   outer + 5
# end
# end
# p number_array

# REFACTORED SOLUTION 1
# number_array.flatten!(2).map! do |num|
#   num + 5
# end
# p number_array

# REFACTORED SOLUTION 2
number_array.flatten!
p number_array.collect! {|num|num + 5}


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten!.collect!{|item| p item + "ly"}
p startup_names

# Reflection

# What are some general rules you can apply to nested arrays?

# I think a good general rule for nested arrays is that the standard index structure does not break down when nesting arrays. The
# structure may be more complex, but index 0 will always be the first item in an array, index 1 will be the second, and so forth.
# This is good to remember for when you want to grab the nth index of the nth nested array in an array. Just follow the procedure
# for indel labelling and work your way out or in, depending on if you start counting from the particular item to the outer array,
# or from the outer array in to the particular item. I like starting from what item I want to grab and coutning out from there; if
# I'm able to figure out what index number the item is within its array, then that helps me figure out the subsequent indexes from
# there so I can access that item properly.

# What are some ways you can iterate over nested arrays?

# Depending on what you are trying to accomplish, you can use the methods: each, map/collect, flatten and each_with_index. Flatten
# helps to break down the nested arrays so that those items are on the same "level" as the items in the outer array, and then you
# can iterate over the array normally using any method you need. The method each_with_index can help you iterate over items with a
# particular index, helping you pinpoint, say, every 0 index in nested arrays within the larger outer array. This method worked
# really well in our bingo board challenge.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you
# decide that was a good option?

# For me, I reused the flatten method to help iterate over the nested arrays. My pair, however, had never used flatten before, so
# I helped explain what it did exactly and we were able to use it, in conjunction with the map method, to execute the desired
# block of code for each item in the array, nested or not. My pair was actually more fond of collect over map, so I got used to
# seeing that syntax, which I was not that familiar with (I had totally forgotten collect and map do the same thing!).