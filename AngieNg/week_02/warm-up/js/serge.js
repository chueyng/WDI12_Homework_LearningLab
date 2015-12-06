/*
https://gist.github.com/ga-wolf/2b7b98bafdcf318a63f7

Serge Responds

Serge answers 'Sure.' if you ask him a question.

He answers 'Woah, chill out!' if you yell at him (ALL CAPS).

He says 'Fine. Be that way!' if you address him without actually saying anything.

He answers 'Whatever.' to anything else.

To call the function, we want to be able to do something like this - Serge.respondTo( "Some string here" )

What do you need to do?

Make your HTML and JS files
Make sure you work with an object to get this working - remember to keep your functions small!
Figure out the appropriate response
If you are flying through, do something cool with the CSS or work more on the homework from last night

*/

/* TO BE CONTINUED!
var serge = [{Ask: 'Do you need a coffee?', Answer: 'Sure'},
            {Ask: ['YOU SURE?!', 'Are you sure?'], Answer: ['Woah, chill out', '']},
            {Ask: ' ', Answer: 'Fine. Be that way!'},
            {Ask: 'Ok, I will make one for you now.', Answer: 'Whatever'}]


var respondTo =  function(){
var q1;
var q2;
var q3;
var sergeRespond;

	// Question 1
	q1 = prompt(serge[0].Ask);

	if (q1 != null && 'sure' == serge[0].Answer.toLowerCase()) {
		if (q2 != null && serge[1][0].Ask) {
			serge[1].Answer
		}
	}
}

respondTo()
*/

// The Requirement

// We need to have an object for this work
// Question mark at the end
// All CAPS
// Empty string
// Whatever

var Serge = {

	respondTo: function (statement) {

		if (Serge.isEmpty(statement)) {
			console.log("Fine. Be that way!");
		} else if (Serge.isQuestion(statement)) {
			console.log("Sure.");
		} else if (Serge.isAllCaps(statement)) {
			console.log("Woah, chill out");
		} else {
			console.log("Whatever");
		}
	},

	isEmpty: function (statement) {
		if (!statement || statement.trim() === "") {
			return true;
		}
	}

	isAllCaps: function (statement) {
		return statement === statement.toUpperCase();
	},

	isQuestion: function (statement) {
		return statement.endsWith("?");
	}
}