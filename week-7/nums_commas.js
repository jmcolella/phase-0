// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// input: an integer
// output: string of the input integer with commas
// steps:

// create a function that takes in an integer as an argument
//   convert the input integer into a string
//   convert the string into an array
//   reverse the array
//   split up the array into chunks of three
//   join the chunks of the array with a comma in between each chunk
//   return the reverse of the joined chunks as a string

// Initial Solution

// function separateComma(integer) {
//   var integerArray = integer.toString().split("");
//   var reverseArray = integerArray.reverse();
//   var chunkArray = [];

//   while (reverseArray.length) {
//     var temp = reverseArray.splice(0,3);
//     chunkArray.push(temp.reverse().join(""));
//   }

//   console.log(chunkArray.reverse().join(","));
// }

// separateComma(12345678985322348)


// Refactored Solution

function separateComma(integer) {
  var reverseArray = integer.toString().split("").reverse();
  var chunkArray = [];

  while (reverseArray.length) {
    var temp = reverseArray.splice(0,3);
    chunkArray.push(temp.reverse().join(""));
  }

  console.log(chunkArray.reverse().join(","));
}

separateComma(123456789)



// Your Own Tests (OPTIONAL)

// We tried our best...

// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (typeof integer === 'number'),
//   "The value of integer should be a number.",
//   "1. "
// )

// assert(
//   (typeof reverseArray[0] === "string"),
//   "The value of reverseArray should be a string.",
//   "2. "
// )



// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem
// differently?
// What did you learn about iterating over arrays in JavaScript?
// What was different about solving this problem in JavaScript?
// What built-in methods did you find to incorporate in your refactored solution?