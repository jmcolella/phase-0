# Full Name greeting program

puts "Let's figure out who you are. Please tell me you're first name."
first_name = gets.chomp

puts "Great. Now, can I have your middle name?"
middle_name = gets.chomp

puts "Fantastic. Now let's get your last name."
last_name = gets.chomp

puts "Alright. Nice to meet you #{first_name} #{middle_name} #{last_name}!"

# Bigger Better Favorite Number program

puts "Can I please have your favorite number?"
num = gets.chomp.to_i

puts "Let me suggest a new number, OK?"
new_num = num + 1

puts "This is your new favorite number: #{new_num}!"

# How do you define a local variable?

# A local variable is defined simply using an "=" sign followed by some Ruby object. For example, if I wanted to define the local variable "num" as the integer "5" I would write the following: num = 5.

# How do you define a method?

# A method is defined by using "def" and assigning a name and block of code to execute. Methods can also take arguments, which can be defined using parantheticals after the name of the method. For example, the following method "def first_name(name)" is called first_name and takes the argument "name" when called. Below that "def" line would be a block of code, say, "puts name" and then after that would follow "end", on a separate line.

# What is the difference between a local variable and a method?

# A local variable is one that can exclusively reside inside a method, where as a method is a block of code that can be called upon and executed as many times as necessary in a program. In the example above, first_name is the method that can be called upon and be executed, while "name" is the local variable inside the method that is equal to whatever parameter is called on with the method.

# How do you run a ruby program from the command line?

# To run a ruby program from the CL, you first need to make sure the file extentsion is ".rb", which denotes that the file is a ruby file. Then, simply type "ruby" followed by the file name, and the CL will run the program.

# How do you run an RSpec file from the command line?

# Use "rspec" followed by the name of the rspec file you want to run.

# What was confusing about this material? What made sense?

# The only confusing thing was trying to get the address method to work properly according to the rspec file's parameters. I kept getting an error that the method was actually outputting "nil", even though I had puts as part of the block of code. I then realized that puts does not actually evaluate the code, it simply just prints something to the console, so I changed the puts to return and the rspec test passed. That was a pretty solid lesson in puts vs. return.