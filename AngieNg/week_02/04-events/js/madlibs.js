var body = document.getElementsByTagName('body')[0];

var makeMadLib = function() {
	var personName = document.getElementById('person').value;
	var adjective = document.getElementById('adjective').value;
	var noun = document.getElementById('noun').value;

	// var storyline = personName + ' really likes ' + adjective + ' ' + noun; 
	var storyline = [personName, 'really likes', adjective, noun +'.'].join(' ');


	//Put in story description into story id
	var story = document.getElementById('story');
	story.innerHTML = storyline;
	body.appendChild(story);
}

var button = document.getElementById('lib-button');
button.addEventListener('click', makeMadLib);