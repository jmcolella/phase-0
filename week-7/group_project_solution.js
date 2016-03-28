/*
User Stories; Person 1 (Kristal Lam)
*Test For Sum*
1. As a user, I want to create a function called sum
2. As a user, I want the function sum to determine the sum of all elements in a list, even if the list has an odd number of elements
3. As a user, I want the function sum to determine the sum of all elements in a list, even if the list has an even number of elements
*Test For Mean*
4. As a user, I want to create a function called mean
5. As a user, I want to have the function mean determine the average of all elements in the list, even if list has an odd number of elements
6. As a user, I want to have the function mean determine the average of all elements in the list, even if list has an even number of elements
*Test For Median*
7. As a user, I want to create a function called median
8. As a user, I want to have the function median determine the median value of all elements within the list, even if the list has an odd number of elements
9.  As a user, I want to have the function median determine the median value of all elements within the list, even if the list has an even number of elements
*/

/*
Pseudocode; Person 2 (Samantha Holmes)
*Test For Sum*
  - define a function "sum" that takes in one argument: an array
  - add all elements in the array (list)
    - set it equal to a variable "sum"
  - return variable "sum"
  - end function "sum"
*Test For Mean*
  - define a function "mean" that take in one argument: an array
  - add all elements in the array (list)
    - divide this value by the length of the array
    - set this equal to a variable "mean"
  - return variable "mean"
  - end function "mean"
*Test For Median*
  - define a function "median" that takes in one argument: an array
  - check if the length of the array is an odd number or an even number
    - IF the length is odd
      - take the element at the index equal to the length divided by 2 (using integer division)
        - return this equal to a variable "median"
    - ELSE
      - take the element at the index equal to the length divided by 2
        - add this value to the element at the index equal to (the length divided by 2) minus 1
        - divide the summed value by 2 (using float division)
        - return this equal to a variable "median"
    - end IF/ELSE statement
  -end function "median"
*/

// JavaScript from Pseudocode; Person 3 (John Colella and Elizabeth Brown)

var sum = function(array) {
  var sum = 0
  for (var index = 0; index < array.length; index++) {
    sum += array[index]
  };
  return sum
};

var mean = function(array) {
  var sum = 0
  for (var index = 0; index < array.length; index++) {
    sum += array[index]
  };
  var mean = sum / array.length
  return mean
};

var median = function(array) {
  if (array.length % 2 != 0)
    var median = array[(array.length - 1) / 2];
  else
    var median = (array[array.length / 2] + array[array.length / 2 - 1]) / 2.0;
  console.log(median);
  return median;
};

// Refactored Solution; Person 4 (Kunal Patel)

// Sum Function
function sum(array) {
  return array.reduce(function(a, b) {
    return a + b;
  });
};

// Mean Function
function mean(array) {
  return sum(array) / array.length;
};

// Median Function
function median(array) {
  if (array.length % 2 != 0)
    var median = array[(array.length - 1) / 2];
  else
    var median = (array[array.length / 2] + array[array.length / 2 - 1]) / 2.0;
  console.log(median);
  return median;
};

/*
Back to User Stories; Person 4 (Kunal Patel)
*Test For Sum*
1. As a user, I want to make a function called sum that takes in an array.
2. As a user, I want to set the local variable sum equal to zero.
3. As a user, I want to start with the first value in the array (list) and add it to the sum variable that we declared above.
4. As a user, I want to move through each value in on the list (array) and keep adding it to the sum variable.
5. As a user, I want to return the value of the sum variable after each value in the list has been added.
*Test For Mean*
6. As a user, I want to make a function called mean that takes in an array.
7. As a user, I want to again set the local variable equal to zero.
8. As a user, I want to again start with the first value in the array (list) and add it to the sum variable that we declared above.
9. As a user, I want to again move through each value in on the list (array) and keep adding it to the sum variable.
10. As a user, I want to set a variable named mean to equal the sum divided by the number of items in the list (array).
11. As a user, I want to return the value of the variable mean that we just defined.
*Test For Median*
12. As a user, I want to make a function called median that takes in an array.
13. As a user, I want to determine if the array (list) has an even amount of values or odd amount of values.
14. As a user, if the array length has an odd amount of values, divide the list into two and assign the middle value to the median variable.
15. As a user, if the array length has an even amount of values, again divide the string into two, add the middle two values and divide them by two. Assign this value to the median variable.
16. As a user, the median variable should be returned at the end of the function.
*/

/*
Summary of Tests; Person 1 (Kristal Lam)

These are the results:

1. true
2. true
3. true
4. true
5. true
6. true
7. true
48. true
5.5
9. true

Running the code, looks like test 4 failed, it was testing the mean, shave have returned true or false.
*/
