 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: hit a homerun
// Goals: hit a homerun, do not get caught out
// Characters: batter, fielder
// Objects: batter, fielder
// Functions: hit, catch

// Pseudocode
// create an object for the batter
//  batter will have property for homerun and a function hit that takes two arguments, skill and power
//    IF skill and power are above 75, return a value from an array weighted towards home runs
//    ELSE IF skill and power are above 50, return a value from an array equal with home runs
//    ESLE IF skill and power are above 25, return a value from an array with very little home runs
//    ELSE, return a value from an array with no home runs
//  check to see if the batter and fielder return the same value
//    IF the value is the same, return a message that the batter is out and loses
//    ELSE IF array value is not a homerun, return a message saying good job, but try again for a homerun
//    ELSE return a message saying the player has hit a homerun and won
//
// create an object for the fielder
//  fielder will have property for out and the function for field that takes one argument, skill
//    IF skill is above 75, return a value from an array weighted towards stopping home runs
//    ELSE IF skill is above 50, return a value from an array equal with stopping home runs
//    ESLE IF skill is above 25, return a value from an array with very little ability to stop home runs
//    ELSE, return a value from an array with no ability to stop home runs

// create a new instance of the batter object and give it skill/power parameters
// create a new instance of the fielder object and give it a skill parameter
// call the field function on the new instance of the fielder
// call the hit function on the new instance of the batter

// Initial Code

var batter = {
  homerun: 0,
  hit: function(skill, power) {
    if (skill > 75 && power > 75) {
      batter.homerun = Math.floor((Math.random()*100)+1);
      console.log("We have a heavy hitter at the plate. I think we can expect a home run here.")
    }
    else if (skill > 50 && power < 50) {
      batter.homerun = Math.floor((Math.random()*50)+1);
      console.log("This guy certainly has the ability to knock one out, let's see what will happen.")
    }
    else if (skill > 25 && power > 25) {
      batter.homerun = Math.floor((Math.random()*25)+1);
      console.log("This kid is still going through his development, maybe he has a chance to belt one out of here.")
    }
    else {
      batter.homerun = Math.floor((Math.random()*10)+1);
      console.log("This guy just got called up from the minors, I doubt he can hit a homer here.")
    }

   console.log("And the swing...");
   // console.log(batter.homerun)
   // console.log(fielder.out)

    if (batter.homerun === fielder.out) {
      console.log("It's caught! Better luck next time for the batter.");
    }
    else if (batter.homerun >= 50) {
      console.log("That ball is outta here! I DON'T BELIEVE WHAT I JUST SAW. The batter has won the game!");
    }
    else if (batter.homerun < 45 ) {
      console.log("That's not good enough to win the game, maybe the next batter can score.");
    }
  },
};

var fielder = {
  out: 0,
  field: function(skill) {
    if (skill > 75) {
      fielder.out = Math.floor((Math.random()*100)+1);
    }
    else if (skill > 50) {
      fielder.out = Math.floor((Math.random()*50)+1);
    }
    else if (skill > 25) {
      fielder.out = Math.floor((Math.random()*25)+1);
    }
    else {
      fielder.out = Math.floor((Math.random()*10)+1);
    }
  },
};

var mikeTrout = batter;
var andrewMccutchen = fielder;

andrewMccutchen.field(76);
mikeTrout.hit(80,80);


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//