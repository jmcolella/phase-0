# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, was expecting the keyword "end"
# 5. Where is the error in the code?
# it comes after the period in the commented line "write your reflection below as a comment"
# 6. Why did the interpreter give you this error?
# because there is no "end" for the while loop; ruby is expecting that end word but it does not have it

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# name error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable/method south_park
# 4. Where is the error in the code?
# the error seems to be in main; there is no arrow indicating the specific spot
# 5. Why did the interpreter give you this error?
# we are getting this error because south_park is not defined as anything, so the interpreter doesn't know if it is a varible or a method

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# no method error
# 3. What additional information does the interpreter provide about this type of error?
# undefined method for cartman
# 4. Where is the error in the code?
# it is in main
# 5. Why did the interpreter give you this error?
# cartman is not defined as a method; it supposedly takes an argument noted by the parantheses, but there is no code or "def" to suggest it is a method

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments for the method (1 for 0)
# 4. Where is the error in the code?
# it is in the method cartmans_phrase
# 5. Why did the interpreter give you this error?
# we got this error because when we called cartmans_phrase, we passed a parameter through it, but the method for cartmans_phrase does not take any arguments, so we get the argument error message

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# it is in the cartman_says method
# 5. Why did the interpreter give you this error?
# we defined a method cartman_says that takes an argument offensive_messages, however, when we called cartman_says we did not pass a parameter through it, so we get the argument error message saying we don't have a parameter for the argument



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# in the cartmans_lie method
# 5. Why did the interpreter give you this error?
# when we called cartmans_lie, we only gave it one parameter even though the method takes two arguments, therefore the argument error message

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# type error
# 3. What additional information does the interpreter provide about this type of error?
# string can't be coerced into fixnum
# 4. Where is the error in the code?
# main
# 5. Why did the interpreter give you this error?
# we got this error because we are trying to multiply an integer by a string, which is impossible

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# zero division error
# 3. What additional information does the interpreter provide about this type of error?
# divided by zero
# 4. Where is the error in the code?
# in main and the "/"
# 5. Why did the interpreter give you this error?
# we can't divide an integer by 0, it is impossible in math

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# load error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
# in require_relative and main
# 5. Why did the interpreter give you this error?
# we got this error because the file cartmans_essay.md does not exist on my computer


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# The hardest error was definitely the first one because the line number
# threw me off and I was unsure where an additional "end" keyword was needed.
# Once I realized the while loop wasn't closed off, I figured out why the
# interpreter was saying the error was on line 170. The interpreter was searching
# for that end, and since the last line in the file was 170, it was at least expecting
# the end keyword to be there.

# How did you figure out what the issue with the error was?

# See above in my response. I realized that the interpreter was looking for the end
# keyword, and it said the error occured on line 170 because that was the last line in
# the file and, subsequently, the last place where the missing end keyword could be
# located.

# Were you able to determine why each error message happened based on the code?

# For the argument errors, I was able to see the 1 for 0 or 0 for 1 errors pretty
# easily because the code reflected that literally. The only one I wasn't able to determine
# based on the code was the last error because I'm not familiar with require_relative; to
# me it seems like it searches for a file? Or tries to open it? Still unsure on that one.

# When you encounter errors in your future code, what process will you follow to help you debug?

# I look for the the line number first so I can go straight to that part of the code in
# my file and look at that in conjunction with the rest of the error message. I find
# looking at the code itself helps to contextulize the error message, even though I now
# have a good handle on reading these very basic error messages, like argument error or no
# method error.