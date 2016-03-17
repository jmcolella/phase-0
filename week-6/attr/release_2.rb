# Release 2

class Profile

  attr_reader :age

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

  #this code is no longer needed.
  # def what_is_age
  #   @age
  # end

  def change_my_age=(new_age)
    @age = new_age
  end

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

# This method changed names! Now we have a method called #.age which returns the value of @age, just like what_is_age did. Thanks to attr_reader :age. If you don't believe me and you want to see for your self, paste lines 3 - 50 into IRB and type
# instance_of_profile.methods - Object.methods
#age() will be a member of this list!
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

instance_of_profile.change_my_age = 28
instance_of_profile.change_my_name = "Taylor"
instance_of_profile.change_my_occupation = "Rare Coins Trader"

puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info

# Reflection

# What changed between the last release and this release?

# A reader attribute has been added for the method age, replacing the original method "what_is_age." Both the reader
# attribute and the what_is_age method do the same thing: they hold the instnace variable for age and will display it if
# called.

# What was replaced?

#  The what_is_age method, since it can be converted into a reader attribute simply by changing the name of the method
# itself to "age".

# Is this code simpler than the last?

# I'd say it's a bit simpler, even though it incorporates a more complicated idea with the reader attribute. Even then,
# though, the reader attribute is simply saying that the name of the method and the name of the instance variable are the
# same, so when calling the name of this method, you will receive data that is assigned to an identically named instance
# variable. It consolidates what would have been three lines of code into one.