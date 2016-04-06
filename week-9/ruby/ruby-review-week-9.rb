# FIBONACCI

# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Input: number
# Output: true or false if input number is part of fibonacci sequence
# Steps:
# create a start point of 0
# create a counter up that adds on top of itself


# Initial Solution

# def is_fibonacci?(num)
#   counter = 0
#   fib = ((((1+(Math.sqrt(5)))/2)**counter) - (-(1+(Math.sqrt(5)))/2)**(-counter)) / (Math.sqrt(5))
#   until counter == num
#     if fib == num
#       p true
#     else
#       p false
#     counter += 1
#     end
#   end
# end

# # def fibonacci(num)
# #   actual = num - 1
# #   fib = ((((1+(Math.sqrt(5)))/2)**actual) - (-(1+(Math.sqrt(5)))/2)**(-actual)) / (Math.sqrt(5))
# #   p fib.to_i
# # end

# is_fibonacci?(3)
# Refactored Solution

# 0,1,1,2,3,5,8
#
# p Math.sqrt(5)


# Reflection


# DR. EVIL'S CIPHER


# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # this downcases all characters in the input coded_message and then splits it into an array, where each character is it's own index.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? iterating through the input array made from the coded message
#     found_match = false # Why would this be assigned to false from the outset? What happens when it's true? when this is true, the program returns false when determining if a code is equal to its decoded equivalent; if it is set false from the outset, then we can easily push any x to our decoded sentence if there is no match, as evidenced by the "if not found_match" statement below
#     cipher.each_key do |y| # What is #each_key doing here? selecting only the keys to iterate in the hash
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? this is comparing the x item in the input array to the y key in the hash
#         p decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? it breaks here to exit immediately out of the if statement once a match is found
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? if x is any of those sybmols, add a space
#         p decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? it turns the inclusive range 0 to 9 into an array and checks to see if x is included in that range, which would then just push x as it is into the decoded sentence
#         p decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     unless found_match  # What is this looking for? this is looking for any x that was not matched, ie found_match remained false throughout the iteration
#       p decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? this method returns the decoded sentence, which has been an array, as a string, joined at every character
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = ("a".."z").to_a
  input.each do |letter_input|
    found_match = false
    cipher.each_index do |index|
      if letter_input == cipher[index]
        decoded_sentence << cipher[index-4]
        found_match = true
        break
      elsif letter_input == "@" || letter_input == "#" || letter_input == "$" || letter_input == "%"|| letter_input == "^" || letter_input == "&"|| letter_input =="*"
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(letter_input)
        decoded_sentence << letter_input
        found_match = true
        break
      end
    end
    unless found_match
      decoded_sentence << letter_input
    end
  end
  decoded_sentence = decoded_sentence.join("")
end

# def letter_converter(num)
#   alpha = ("a".."z").to_a
#   @cipher = []
#   alpha.each_index do |index|
#     @cipher << alpha[index-num]
#   end
#   @cipher
# end

# letter_converter(4)

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")
