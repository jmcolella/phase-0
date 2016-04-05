// Pseudocode

// input: grocery list items
// output: updated grocery list
// steps:
// create a prototype grocery list
//    create a property that will hold all the items and quantities in our grocery list
//    create a function that will add an item and quantity to the grocery list property
//    create a function that will remove an item/quantity from the grocery list property
//    create a function that will update an item's quantity in the grocery list property
//    create a function that will print the grocery list property

// Initial Solution

var list = function () {
  this.groceryList = {};
  this.addItem = function (item, quantity) {
    this.groceryList[item] = quantity;
    console.log("You added " + item + " to your list.");
    console.log("Your list now looks like: ");
    for (var item in this.groceryList) {
      console.log("Item: " + item + " Quantity: " + this.groceryList[item] + "");
    };
  };
  this.removeItem = function(item) {
    if (this.groceryList.hasOwnProperty(item)) {
      delete this.groceryList[item];
      console.log("You removed " + item + " from your list.")
      console.log("Your list now looks like: ");
      for (var item in this.groceryList) {
        console.log("Item: " + item + " Quantity: " + this.groceryList[item] + "");
      }
    } else {
      console.log("You tried to delete " + item + " from your list but you cannot, that item does not exist in the grocery list currently.");
    };
  };
  this.updateQuantity = function(item, quantity) {
    if (this.groceryList.hasOwnProperty(item)) {
      this.groceryList[item] = quantity;
      console.log("You updated the quantity for " + item + " in your list.")
      console.log("Your list now looks like: ");
      for (var item in this.groceryList) {
        console.log("Item: " + item + " Quantity: " + this.groceryList[item] + "");
      };
    } else {
      this.groceryList[item] = quantity;
      console.log("You actually added " + item + " to your list; it was not in there previously.");
      console.log("Your list now looks like: ");
      for (var item in this.groceryList) {
        console.log("Item: " + item + " Quantity: " + this.groceryList[item] + "");
      };
    };
  };
  this.printList = function() {
    console.log("The list is as follows: ")
    for (var item in this.groceryList) {
      console.log("Item: " + item + " Quantity: " + this.groceryList[item] + "");
    };
  };
};

// Driver Code
var myGroceryList = new list();
myGroceryList.addItem("banana", 4);
myGroceryList.updateQuantity("tomatoes", 10);
myGroceryList.updateQuantity("banana", 3)
myGroceryList.addItem("broccoli", 4)
myGroceryList.addItem("pears", 3)
myGroceryList.addItem("apples", 5)
myGroceryList.updateQuantity("pears", 6)
myGroceryList.removeItem("broccoli")
myGroceryList.removeItem("ice cream")



// Refactored Solution

// I don't believe I can refactor my solution any further.


// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects
// constructors, etc.)

// I tried my best to solidfy working with constructor functions and making use of properties and their values
// within the function itself. I had trouble in the past doing that, but once I learned you need to include the
// "this." syntax, things became clearer and I worked on honing in that skill with this challenge. I also worked
// on using for loops with JS object literals to "dig" into them so I can iterate and extract the values I want.
// I implemented this when attempting to print out the grocery list, which was also practice with inserting
// variables into strings, since JS does not have interpolation like in Ruby.

// What was the most difficult part of this challenge?

// This most difficult part was conceptualizing how the grocery list should be built. I initially thought I would
// have the constructor function initialized with a list of items, but I opted to not go for that route. Usually,
// when making a grocery list, you add one item at a time with a specific quantity attached to it. So, to mimic
// that, my prototype object "list" starts as a blank slate (evidenced by the blank object literal
// this.groceryList) and then the user can add on items one by one with specific quantities using the other
// functions in the prototype.

// Did an array or object make more sense to use and why?

// I thought an object was the clear choice for this challenge, because it allows for distinct property/value
// pairs, which best mimic how a real grocery list is written out. Sure, sometimes people just write out lists
// of items with no quantities (and in that sense, an array would have worked) but I wanted to add another layer
// of complexity to his prototype object "list", so I opted to construct the grocery list as an object literal,
// with various functions altering it.