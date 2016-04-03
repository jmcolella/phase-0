// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution

for (var name in votes) {
  for(var office in votes[name])

//   console.log(votes[name][office])

//   console.log(office)

  countVotes(office, votes[name][office])

}

function countVotes(office, candidate){
  var count = 1;

  if (voteCount[office].hasOwnProperty(candidate)) {
    count = voteCount[office][candidate];

    voteCount[office][candidate] = count + 1

  } else {
    voteCount[office][candidate] = count
  }

  // console.log(voteCount)
}

console.log(voteCount)


/*assign the winners in officers.*/

for (var office in voteCount) {

  var max = 0 ;

  for (var name in voteCount[office]) {

    // var max = voteCount[office][name];

    if (voteCount[office][name] > max) {
      max = voteCount[office][name];

      officers[office] = name;
    }
    // else {
    //   officers[office] = name;
    // }
    // else
    //   console.log("if failed");
  }
}

console.log(officers)


// __________________________________________
// Refactored Solution


for (var name in votes) {
  for(var office in votes[name])

  countVotes(office, votes[name][office])

}

function countVotes(office, candidate){
  var count = 1;

  if (voteCount[office].hasOwnProperty(candidate)) {
    count = voteCount[office][candidate];
    voteCount[office][candidate] = count + 1
  } else {
    voteCount[office][candidate] = count
  }

}

/*assign the winners in officers.*/

for (var office in voteCount) {
  var max = 0 ;
  for (var name in voteCount[office]) {
    if (voteCount[office][name] > max) {
      max = voteCount[office][name];
      officers[office] = name;
    }
  }
}

console.log(officers)


// __________________________________________
// Reflection


// What did you learn about iterating over nested objects in JavaScript?

// I learned how to utilize the "for...in..." loop better. I hadn't really used this before, so it was hard
// for me to conceptualize how it would work. My pair had a much better grasp of the concept, so as we worked
// on the challenge, I was able to pick up how you can use this loop to "dig deeper" into the nested object,
// ultimiate you ultimately find the value you want to work with in the iteration.

// Were you able to find useful methods to help you with this?

// The "hasOwnProperty" method is really helpful to determine if an objecy includes some property passed to
// the method as an argument. We made use of this when tallying up the votes for each student for each office.
// In order to make the tally in the voteCount object, we used "hasOwnProperty" to determine if that person
// already had votes for a particular office (aka are they already included in the voteCount object), and if they
// were, we added one more vote to that candidate's value.

// What concepts were solidified in the process of working through this challenge?

// Iterating over nested objects for sure. Also use the "hasOwnProperty" method. I would still like to experiment
// with nested objects and the "for...in..." loop when we have some more time next week, before we start on site
// work.



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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)