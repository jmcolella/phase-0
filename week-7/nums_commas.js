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


  for (var index = 0; reverseArray.length; index++) {
    chunkArray[index] = reverseArray.splice(0,3).reverse().join("");
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

// Considering I approached the original Ruby challenge incorrectly (I used IF conditional statements instead
// iterating over the integer), I certainly approached this challenge in JS much differently. I took the general
// idea from the Ruby challenge once I figured out how to iterate properly and applied them to JS. I knew I wanted
// to make the input integer an array of strings and then reverse that array to iterate over properly and insert
// commas based on that. I just needed to translate the methods from Ruby into JS methods.

// What did you learn about iterating over arrays in JavaScript?

// I learned that it's a pain in the butt to iterate in JS, at least compared to Ruby. You need to use a loop
//(whether that is FOR or WHILE) to accomplish any sort of iteration; this is unlike Ruby where we can use
// simple methods to complete the iteration for us. Even when using a JS method, you need to establish a loop
// in order to iterate; this allows you to establish local variables that correspond to indexes/values in the
// array. Without doing that, JS won't actually iterate through the array.

// What was different about solving this problem in JavaScript?

// The main difference was trying to grasp the JS syntac while going through the problem. With Ruby, we had
// more practice with the language before trying to tackle this type of challenge. With JS, we've barely had a
// week to work with the language, so it was a struggle to try and figure out the logic and write it out in a
// way that would actually work. For example, my pair and I talked a few minutes about how to actually write out
// the function; should we use the function declaration syntax of the expression syntax? In Ruby, we wouldn't
// have needed to discuss that, we just define the method. It was these little differences in syntax, and how
// to iterate, that made solving this problem much different from Ruby.


// What built-in methods did you find to incorporate in your refactored solution?

// In our initial solution, we already incorporated a ton of JS methods; there wasn't really anything saying we
// couldn't and we were having a hard time not using them. In my refactored solution, I changed up the loop from
// WHILE to FOR, which allowed me to assign each index of the chunkArray to a splice of the reverseArray,
// accomplishing what I was doing in three lines in the initial solution in only 2. It's not the biggest change,
// but certainly something that consolidated code and I think makes the function read better.