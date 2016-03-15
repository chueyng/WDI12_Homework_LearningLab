/*
Robot Warmup
When robots come off the factory floor, they have no name.

The first time you boot them up, a random name is generated, such as RX837 or BC811.

Every once in a while we need to reset a robot to its factory settings, which means that their name gets wiped. The next time you ask, it gets a new name.

For bonus points

Did you get it working and is the code clean? If you want to, these are some additional things you could try:

Random names means a risk of collisions. Make sure the same name is never used twice.
*/

//Jack's version 
//var robot = Robot.create();
//robot.name;
//robot.reset();

// Generate a random string of characters
// Generate some random numbers
// Create function needs to use those previously mentioned functions
// And 

var Robot = {

	generateCharacters: function (length) {
		var charset = "ABCDEDFGHIJKLMNOPQRSTUVWXYZ";

		var characters = ""; 
		for (var i=0 ; i < length; i++){
			var randomNumber = Math.floor(Math.random() * charset.length);
			characters += charset[randomNumber];
		}
		return characters;
	},

	generateNumbers: function (min, max) {
		
		var randomNumber = Math.floor(Math.random() * (max - min) + 100);
		return randomNumber;
	},


	create: function () {
		return {
			name: this.generateCharacters(2) + this.generateNumbers(100,999),
			reset: function () {
				this.name = Robot.generateCharacters(2) + Robot.generateNumbers(100,999)
				return this.name;
			}
		};
	}


};











/*
var listName = ['RX837', 'BC811', 'AB134'];
var usedName = [];

var Robotname = {
	
	createName: function () {

		var nNameIndex = Math.floor(Math.random() * listName.length);
		var newName = listName[nNameIndex];
		usedName = usedName.push(newName);
		console.log("newName = " +newName + '**usedName = ', usedName);
		return newName;
	},

	reset: function (name) {
		clear(name);
	},

	notusefortwice: function () {

	}

}

$(document).ready(function (){
	$('#create').click(Robotname.createName);
	$('#reset').click(Robotname.reset);
});
*/
