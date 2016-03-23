// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Triangle
for (i="#"; i.length < 8; i = i + "#") {
  console.log(i)
}

// FizzBuzz
for (i=1; i < 101; i++) {
  if (i % 3 === 0) {
    console.log("Fizz");
  } else if (i % 5 === 0 && i % 3 != 0) {
    console.log("Buzz");
  } else {
    console.log(i)
  }
}


// Functions

// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "John",
  age: 24,
  favoritefood1: "Pizza",
  favoritefood2: "BBQ",
  favoritefood3: "Hummus",
  quirk: "I'm brew my own beer",
}

console.log(me["name"])
console.log(me["age"])
console.log(me["favoritefood1"])
console.log(me["favoritefood2"])
console.log(me["favoritefood3"])
console.log(me["quirk"])