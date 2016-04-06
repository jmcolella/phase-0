// DOM Manipulation Challenge


// I worked on this challenge with: Talal.


// Add your JavaScript calls to this page:

// Release 0:
var newClassName = document.getElementById("release-0");
newClassName.className = "done";



// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:
document.getElementsByTagName("h1")[0].textContent = "I completed release 2.";



// Release 3:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 4:

for (var i = 0; i < document.getElementsByClassName("release-4").length; i++){
  document.getElementsByClassName("release-4")[i].style.fontSize = "2em";
};


// Release 5:
var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));

// Reflection

// What did you learn about the DOM?

// I learned that the DOM is the model that helps JavaScript communicate with HTML. Without it, JS wouldn't know what tags/classes
// /ids to work with and manipulate.

// What are some useful methods to use to manipulate the DOM?

// I don't know if these are methods, per se, but using syntax such as "getElementsByTagName" "getElementbyId" and
// "getElementsByClassName" are crucial in helping to identify what parts of the DOM you want JS to manipulate. By calling each
// of these on document (that is, the HTML document it is connected to), we can tell JS to pinpoint specific nodes on the DOM and
// tell it how to manipulate those tags. In this challenge, most of what we did could be accomplished in CSS, but what is really
// intriguing is combining this ability to manipulate the DOM with JS functionality. What I mean by this is that, instead of using
// CSS exclusivley to style, we can use JS when we only want some sort of styling to apply for a specific situation. This can be
// made possible through JS functions, unlike in CSS, where whatever is written exists no matter the situation. I'm looking most
// forward to incorporating JS functions to further manipulate the DOM and how my webpage will look to the user.
