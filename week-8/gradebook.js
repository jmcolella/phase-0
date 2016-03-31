/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {
  "Joseph": {},
  "Susan": {},
  "William": {},
  "Elizabeth": {},
};

gradebook["Joseph"]["testScores"] = scores[0]
gradebook["Susan"]["testScores"] = scores[1]
gradebook["William"]["testScores"] = scores[2]
gradebook["Elizabeth"]["testScores"] = scores[3]

gradebook["addScore"] = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook["getAverage"] = function(name) {
  return average(gradebook[name]["testScores"]);
};

function average(integers) {
  total = 0
  for (var i = 0; i < integers.length; i++) {
    total += integers[i]
  }
  return total / integers.length;
};




// __________________________________________
// Refactored Solution

var gradebook = {
  "Joseph": {},
  "Susan": {},
  "William": {},
  "Elizabeth": {},
};

gradebook["Joseph"]["testScores"] = scores[0]
gradebook["Susan"]["testScores"] = scores[1]
gradebook["William"]["testScores"] = scores[2]
gradebook["Elizabeth"]["testScores"] = scores[3]

gradebook["addScore"] = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook["getAverage"] = function(name) {
  return average(gradebook[name]["testScores"]);
};

function average(integers) {
  var sum = integers.reduce(function(a, b) {
    return a + b;
  })
  return sum / integers.length;
};






// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

// I learned that you can add functions by simply assigning them to a property in an object. You can also
// call functions not assigned to any property in an object within one of its properties. This is definitely
// a useful tool if you wanted to keep various components of a program separate from each other for
// organizational and de-bugging purposes.

// How did you iterate over nested arrays in JavaScript?

// You can iterate over nested arrays in JavaScript similarly as you can in Ruby. There's a layering concept
// to the iterations, wherein you need to iterate over each "level" of the array to ultimately return what you
// are after. In JavaScript, this may mean using the map method multiple times as you can deeper and deeper into
// the array to ultimately map what you need to map.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

// We made use of the method reduce to execute summing up all of the scores for the average function. I had
// read about reduce before, but I had never used it. Reduce works similarly to inject in Ruby, where both
// progressively add up (or other mathematical operation) the items in an array, returning the cumulative total
// of all those items. This worked incredibly well for getting the average because the first step in finding an
// average is to add up all the numbers in the set; then it was just a matter of dividing this total sum by the
// length of the array (ie the total numbers).


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)