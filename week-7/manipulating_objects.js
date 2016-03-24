// Manipulating JavaScript Objects

// I worked on this challenge: by myself.

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {
  name: "Adam"
}

terah["spouse"] = adam;

terah.weight = 125;

delete terah.eyeColor;

adam["spouse"] = terah

terah["children"] = children = {}

var carson = {
  name: "Carson"
}
terah.children["carson"] = carson

var carter = {
  name: "Carter"
}
terah.children["carter"] = carter

var colton = {
  name: "Colton"
}
terah.children["colton"] = colton

adam["children"] = terah.children


// __________________________________________
// Reflection: Use the reflection guidelines

// What tests did you have trouble passing? What did you do to make it pass? Why did that work?

// I had a terrible time trying to assign the carter object as an object within the children property
// for the terah object. I was trying to base it off of creating the children object within the
// children property, but that wasn't working. Essentially, I was trying to do terah["children"] =
// children["caron"] = caron; all that did was just insert the name property from the carson object,
// but not the object itself. I took a break for a few minutes and just thought about how would I
// call the carson object within the children property of terah? Well, the notation would be:
// terah.children.carson; I then thought, why not use that notation and set it equal to the object
// carson? Well, turns out that worked, although I tweaked the notation to use brackets for the
// property name carson.

// How difficult was it to add and delete properties outside of the object itself?

// Very easy to delete and add. The only issue I had was adding an object within an object that is a
// property of an object; this came up when trying to add the carson object as a property of the
// children object, which is then a property of the terah object. I finally figured out the notation as
// described in my previous response.

// What did you learn about manipulating objects in this challenge?

// I learned how to assign an object as a property within an object, essentially creating nested
// objects, and how to call them. I also learned, through the syntax at the end of the tests, that if
// you create a property in an object that refers to the object itself, JavaScript uses a placeholder
// [Circular] to denote that, rather than displaying the object, which would then lead down a rabbit
// hole of displaying the same object ad infinitum.


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)