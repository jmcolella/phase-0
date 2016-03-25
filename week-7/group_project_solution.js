/*
Pseudocode by Person 2 (Samantha Holmes)
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

// JavaScript from Pseudocode; Person 3 (John Colella and Kunal Patel)

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

