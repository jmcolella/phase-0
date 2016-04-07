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

#goodcard.double
#goodcard.sum
#true_test = goodcard.check_card

def assert
  raise "Assertion failed!" unless yield
end

assert {goodcard.check_card}
assert {badcard2.check_card}


# 5. Reflection