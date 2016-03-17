# Release 3:

class Profile

  attr_reader :age
  attr_writer :age

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

  # This code is no longer needed
  # def change_my_age=(new_age)
  #   @age = new_age
  # end

  def what_is_name
    @name
  end

  def change_my_name=(new_name)
    @name = new_name
  end

  def what_is_occupation
    @occupation
  end

  def change_my_occupation=(new_occupation)
    @occupation = new_occupation
  end


end

instance_of_profile = Profile.new

puts "--- printing age -----"
sleep 0.8
p instance_of_profile.age

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.what_is_name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.what_is_occupation

puts "--- changing profile information ----"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.age = 28 # This method has changed! See the difference?
instance_of_profile.change_my_name = "Taylor"
instance_of_profile.change_my_occupation = "Rare Coins Trader"


puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info

# Reflection

# What changed between the last release and this release?

# Now, not only is there a reader attribute for age, there is also a write attribute. Now, not only when the age method is
# called will it display the value assigned to the instance variable in its method, but it can also assign a new value
# to that instance variable when called with the syntactic sugar "object.age = value". Age can both be read and written.

# What was replaced?

# The "change_my_age" method was replaced with the write attribute for age.

# Is this code simpler than the last?

# In a way, this actually makes things more simple. With the write attribute for age, we can work with one method name to
# to do anything related to the age. In the previous releases, we needed this new method called "change_my_age" to be
# called on a Profile instance object in order to execute the code to reassign the age instance variable. Now, with the
# write attribute, all we need to call is "age = value" on our Profile instnce object to do the reassignment. This is great
# because the "age = value" method call is very similar to the read attribute call, which is just "age". The difference is
# in the syntactic sugar, but the similarity between the two helps to make our code a bit more readable and organized.