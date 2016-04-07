# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# #assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The definition of the assert statement raises a error message unles the yeild block evaluates to true.
# name is set to equal bettysue so that an assert statement given name == "bettysue" evaluates to true, preventing the error from being raised.
# However, name == "billybob" evaluates to false so that the unless statement does not run, raising the error message.
# 3. Copy your selected challenge here


class CreditCard
  def initialize(number)
   temp_array = number.to_s.split(//)
   @num_array = temp_array.map! { |x| x.to_i  }
    if @num_array.length != 16
      raise ArgumentError.new("That is not a 16 digit credit card number")
    end
  end

  def double
    counter = @num_array.length - 2


    while counter >= 0
      @num_array[counter] = @num_array[counter] + @num_array[counter]
      counter = counter - 2
    end
  end

  def sum


      @num_array.map! {|x|  if x >= 10
        x.to_s.split(//).map! {|y| y.to_i}
        else
          x
        end }
      @num_array.flatten!
      @total = 0
      @num_array.each {|z| @total += z}

  end

  def check_card
    double
    sum


    if @total % 10 == 0
      p true
      else
      p false
    end
  end

end

# 4. Convert your driver test code from that challenge into Assert Statements

goodcard = CreditCard.new(4563960122001999)
# badcard = CreditCard.new(4444311)
badcard2 = CreditCard.new(1111111111111111)

def assert
  raise "Assertion failed!" unless yield
end

assert {goodcard.check_card}
assert {badcard2.check_card}


# 5. Reflection

# What concepts did you review in this challenge?

# We reviewed how to manipulate arrays through iteration (the reverse words challenge) and how to create our own test statements
# (with this assert challenge). It was good practice to figure out how one can create a basic test method that will raise an
# error unless the block passed to it is true. I hope to make use of this basic structure as we move into Phase 1.

# What is still confusing to you about Ruby?

# I'm still a bit confused on how some methods can be destructive and others not. I understand the idea of the bang (!), but, for
# the CreditCard class above, when running our tests, we realized that something in that class was destructive to the input; in
# other words, if you call the method check_card twice on the same object, the second time it is called the object uses the number
# that was resulted from the first call of the method, so the second method call ultimately fails. We were unsure of why this class
# was destructive to the input, and we didn't have a chance to explore that fully. I would like to have a better understanding of
# that heading into Phase 1.

# What are you going to study to get more prepared for Phase 1?

# I want to re-read the first chapter of Well-Grounded Rubyist to get a better understanding of the general framework of Ruby;
# when I read it the first time, everything kind of went over my head, so I'm hoping with the new knowledge I have, the chapter
# will make more sense.