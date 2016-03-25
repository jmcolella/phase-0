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

// var batter = {
//   homerun: 0,
//   hit: function(skill, power) {
//     if (skill > 75 && power > 75) {
//       batter.homerun = Math.floor((Math.random()*100)+1);
//       console.log("We have a heavy hitter at the plate. I think we can expect a home run here.")
//     }
//     else if (skill > 50 && power < 50) {
//       batter.homerun = Math.floor((Math.random()*50)+1);
//       console.log("This guy certainly has the ability to knock one out, let's see what will happen.")
//     }
//     else if (skill > 25 && power > 25) {
//       batter.homerun = Math.floor((Math.random()*25)+1);
//       console.log("This kid is still going through his development, maybe he has a chance to belt one out of here.")
//     }
//     else {
//       batter.homerun = Math.floor((Math.random()*10)+1);
//       console.log("This guy just got called up from the minors, I doubt he can hit a homer here.")
//     }

//    console.log("And the swing...");

//     if (batter.homerun === fielder.out) {
//       console.log("It's caught! Better luck next time for the batter.");
//     }
//     else if (batter.homerun >= 50) {
//       console.log("That ball is outta here! I DON'T BELIEVE WHAT I JUST SAW. The batter has won the game!");
//     }
//     else if (batter.homerun < 50 ) {
//       console.log("That's not good enough to win the game, maybe the next batter can score.");
//     }
//   },
// };

// var fielder = {
//   out: 0,
//   field: function(skill) {
//     if (skill > 75) {
//       fielder.out = Math.floor((Math.random()*100)+1);
//     }
//     else if (skill > 50) {
//       fielder.out = Math.floor((Math.random()*50)+1);
//     }
//     else if (skill > 25) {
//       fielder.out = Math.floor((Math.random()*25)+1);
//     }
//     else {
//       fielder.out = Math.floor((Math.random()*10)+1);
//     }
//   },
// };

// var mikeTrout = batter;
// var andrewMccutchen = fielder;

// andrewMccutchen.field(76);
// mikeTrout.hit(80,45);


// Refactored Code

function batter(skill, power) {
  this.skill = skill;
  this.power = power;
  this.homerun = 0;
  this.hit = function(skill, power) {
    if (this.skill > 75 && this.power > 75) {
      this.homerun = Math.floor((Math.random()*100)+1);
      console.log("We have a heavy hitter at the plate. I think we can expect a home run here.")
    }
    else if (this.skill > 50 && this.power > 50) {
      this.homerun = Math.floor((Math.random()*75)+1);
      console.log("This batter certainly has the ability to knock one out, let's see what will happen.")
    }
    else if (this.skill > 25 && this.power > 25) {
      this.homerun = Math.floor((Math.random()*50)+1);
      console.log("This batter is still going through his development, maybe he has a chance to belt one out of here.")
    }
    else {
      batter.homerun = Math.floor((Math.random()*25)+1);
      console.log("This batter just got called up from the minors, I doubt he can hit a homer here.")
    }

   console.log("Homerun potential: " + this.homerun);
   console.log("Fielder catch potential: " + fielder.out);
   console.log("And the swing...");


    if (this.homerun === fielder.out || this.homerun < fielder.out) {
      console.log("It's caught! Better luck next time for the batter.");
    }
    else if (this.homerun >= 50) {
      console.log("That ball is outta here! I DON'T BELIEVE WHAT I JUST SAW. The batter has won the game!");
    }
    else if (this.homerun < 50 ) {
      console.log("That's not good enough to win the game, maybe the next batter can score.");
    }
  };
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

var mikeTrout = new batter(80,80);
var andrewMccutchen = fielder;

andrewMccutchen.field(76);
mikeTrout.hit();




// Reflection

// What was the most difficult part of this challenge?

// It was fairly difficult to conceptualize a game that wasn't going to take in any user input; essentially we
// were creating a game of chance, almost like playing the penny machines in Vegas. At least, that's what the
// dragon example seemed like (the player moves the same every time the game is played, but the random value
// for the dragon and the gold determine if the player wins/loses), so I took that approach when coming up with
// my game. Then, while actually working on the game, I was having a hard time implementing object constructors
// and using input arguments to instantiate a new instance object. I realized that, for example, in my batter
// constructor object, the hit function wasn't able to reference the local variables "skill" and "power", which
// were initially going to be arguments of the constructor object batter, and not arguments for the function
// hit. I ended up changing the whole thing so that each batter and fielder object were in literal notation, and
// then just parred the properties down to just two (homerun/hit for batter, out/field for fielder). I still have
// to pass skill/power values to the hit/field function, but I wanted those values to be passed as part of the
// object itself and become properties of that object, but I couldn't get those values to cooperate with my
// hit function. Definitiely something for me to explore further. EDIT: I figured out how to make the batter
// work as a constructor object, but I was having a hard time doing the same with the fielder; I kept getting
// "undefined" for the skill/out values, even though I followed the same notation that made the batter object
// work. That I will have to look into more...


// What did you learn about creating objects and functions that interact with one another?

// I learned that syntax is absolutely key to making objects/functions interact with one another. My main issue
// when I was trying to use constructor objects was that, for the function within that constructor object, I
// was using the wrong syntax to reference the arguments being passed into the consturctor argument itself (for
// the batter's case, I was referencing skill and power wrong in the IF statements of the hit function). Once
// I figured out the error in syntax, I adjusted accordingly.


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they
// and how do they work?

// I did not make use of any built-in methods. My refactored solution focused on making the batter object a
// constructor object rather than a literal object and then fine-tuning how the game is played, such as adding
// what happens if the fielder out potential is greater than the batter homerun potential. I'm just disappointed
// so far that I wasn't able to convert the fielder into a constructor object. I might do that if I have some
// more free time this week. At this point, I need to move on to the other modules.

// How can you access and manipulate properties of objects?

// You can access properties of objects by calling that property on the object itself. You can use dot notation
// or bracket notation to accomplish this. Dot notation (object.property) is strict when searching for the
// property called; the name you call must be exactly the same as the property name in the object or the object
// won't return the property. With bracket notation (object["property"]), the property name is evaluated and a
// result is given based on that evaluation. To manipulate properties in an object, you can simply set the
// call notation (dot or bracket) for a particular property equal to a new value to replace that value. If the
// value of a property is a number, you could also simply add/subtract to that value using the +=/-= operator
// when calling that property (ex. object.property += 10 increases the given property value by 10).