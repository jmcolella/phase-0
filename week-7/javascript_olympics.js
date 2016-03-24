 // JavaScript Olympics

// I paired with: Sibel Ergener on this challenge.

// This challenge took me 1.75 hours.


// Warm Up




// Bulk Up

// Pseudocode
//input: Array of objects with athlete name and event to win
//output: A string consisting of name, win property, and event
//steps:
//Create two objects that include name property and event property.
//Put those two objects into a single array.
//Create a function to add a win property to add to each object.
//From that function, return the output string.

var brianne = {
    name: "Brianne Jenner",
    event: "Clarkson Cup",
  };

var hilary = {
    name: "Hilary Knight",
    event: "Isobel Cup",
  }


var athleteArray = [brianne, hilary]

var athleteWin = function(array) {
  for (var index = 0; index !== array.length; index ++) {
      array[index].win = array[index].name + " won the " + array[index].event + "!"
      console.log(array[index].win)
  }
}

athleteWin(athleteArray)

// Jumble your words

// Pseudocode
// input: a string
// output: a reverse of the input string
// steps:
// create a function that will reverse an input string
// convert that input string into an array
// reverse that array
// join the reversed array back into a string

var jumble = function (string) {
  var arrayString = string.split("").reverse().join("")
  return arrayString
}

console.log(jumble("Jumble your words"))


// 2,4,6,8

// Pseudocode
//input: an array of numbers
//output: an array including only the even numbers from the original array
//steps:
//Create a function that accepts an array as an argument
//Map that array specifically with a function that tests if the number is divisible by 2
//If the number is divisible by 2, include it
//Else don't include number
//return new array

var evens = function(array) {
  var evenNums = array.filter(function(num) {
    return num % 2 === 0;
  })
  return evenNums
}

var numberArr = [1, 2, 3, 4, 5]

console.log(evens(numberArr))


// "We built this city"

// Pseudocode
// input: a variable using the Athlete function to take four arguments including name, age, sport and quote
// output: a new object including all of the input data
// steps:
// create the function object called Athlete that accepts 4 arguments
// within the function object use this.[property] to take each argument as a value

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// I definitely solidified my ability to iterate using JavaScript. This was most apparent in the
// even numbers challenge where, in order to get at the values of the array called into the initial
// function, we needed to use another function inside of it in conjunction with the filter method.
// I also learned what a constructor object is and was able to figure out the syntax based on the
// driver code provided. I found it interesting to essentially reverse engineer that object from
// the instance object of that function.

// What are constructor functions?

// It seems that a constructor function is another way to write out an object in JavaScript. Unlike
// a literal object, which has a list of properties and values, the constructor function has a
// specific syntax for each "property" called "this.property_name". Constructor functions can also
// have other functions listed as values of a property. If you create a new instance of the constructor
// then you can call that object with the property that has a function and provide it an argument and
// run that function. It's almost like having an instance method in a class in Ruby. It seems that
// the constructor function is the class equivalent in JavaScript.

// How are constructors different from Ruby classes (in your research)?


// The main difference is syntax. Ruby classes can use attribtutes to create instance methods and
// can also define instance methods that are not exactly "tied down" to any particular property; they
// just exist inside the class. Constructors in JavaScript are written out similar to literal objects
// where there are a series of property/value pairs. Each pair in a constructor must have the "this"
// keyword following by ".property_name". This also goes for creating methods, as functions, in the
// constructor. The function gets its name from the property it is associated with in the constructor.
// There also is no defined initialization of a constructor, like there is for a Ruby class. Since the
// constructor is a function, the initialization comes from giving that function arguments, where as
// in Ruby, you need to define a specific method within the class and provide that method with
// arguments. It's a similar idea, but expressed completely differently.

