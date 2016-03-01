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
