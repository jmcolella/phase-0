## What does puts do?

Puts simply displays the output of a program to the console. It does not return anything, in other words, it does not evaluate the code or pass along any information.

## What is an integer? What is a float?

An integer is a number that is not a string (essentially, a number that is not surrounded by quotation marks). Integers do not contain decimal points; they are whole numers. A float is a number (that is also not a string), but it contains a decimal point. Where as 3 is an integer, 3.0 would be a float.

## What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When dividing with an integer or a float, the resulting answer is always displayed in the format from the operation. So, let's say we want to divide 9 by 2. If we were to divide the float 9.0/2.0, we would end up with the answer 4.5, which is another float. If we were to divide the integer 9/2, however, we would end up with just 4, which is an integer. With the float division, we get the more "precise" answer, but that doesn't make the integer division answer wrong. In fact, it is right in its own way, because 9/2 will leave us with the integer 4, that is, even though 9/2 doesn't precisely equal 4, there is no possible way that 9/2 would be equal to anything greater than 4. This type of division is helpful if we are to make a program that is to determine how many "y" could happen with "x". With our 9 and 2 example, say we wanted to make a program that determined how many 2 dollar movies we could see with 9 dollars. Well, we can't really see 4.5 movies; it's not like the theater would allow us to pay for half of a movie. So, in this case, the maximum movies we could see for 9 dollars is 4, and we would have half leftover, which is irrelevant for the purposes of our program.

## Hours in a year program

`irb(main):001:0> 24*365
=> 8760`

## Minutes in a decade program

`irb(main):002:0> 60*24*365*10
=> 5256000`

## Sub Challenges links

Link to 4.2.1: [4.2.1 Var](https://github.com/jmcolella/phase-0/blob/master/week-4/defining-variables.rb)

Link to 4.2.2: [4.2.2 string](https://github.com/jmcolella/phase-0/blob/master/week-4/simple-string.rb)

Link to 4.2.3: [4.2.3 basic_math](https://github.com/jmcolella/phase-0/blob/master/week-4/basic-math.rb)

## Reflection

#### How does Ruby handle addition, subtraction, multiplication, and division of numbers?

I'm a bit confused by this question, but I suppose it handles all four of these operations between like objects. What I mean by this is that Ruby can only add/subtract/multiply/divide integers with integers and floats with floats. You could not, for example, add an integer to a string, or multiple a number by a string. Also, Ruby will execute expressions within parantheses before anything else.

#### What is the difference between integers and floats?

Please see above.

#### What is the difference between integer and float division?

Please see above.

#### What are strings? Why and when would you use them?

Strings are a collection of characters written with quotations. We would use strings if we are writing a program that will return text rather than just strictly numbers (which would be integers or floats). Strings can contain numbers, but they are treated differently than integers in Ruby. This seems to be due to simply how they are classified, which then affects the ways in which you can use them within a program.

#### What are local variables? Why and when would you use them?

Local variables are ones that reside within a method or block of code and remain exclusive to that method or block of code. For example, say I have a method called square that takes any integer "x" and runs it through the operation x*x. The "x's" within the method, the ones a part of the square operation, are the local variables; they only exist within the specific method called square, and do not affect any other variables called "x" throughout the entire Ruby code/program. This is incredibly important because we don't have to use convoluted variable names to differentiate variables from one another; we can reuse variable names when appropriate without worrying that one used within a method will affect another used outside of that method.

#### How was this challenge? Did you get a good review of some of the basics?

This challenge was pretty easy overall, but it was nice to actually use rspec and see what's it like when you do get an error in the code. I'm still not 100% sure of everything rspec spits back when there is an issue, but it did help me fix the quotient aspect of the basic math challenge, since rspec was saying it was looking for a float when I initially had the program outputting an integer. So, I added the .to_f method to each of my num variables and got the program to pass the rspec test.
