var body = document.getElementsByTagName('body')[0];
var solution = document.getElementById('solution');

var calculator = function() {

	var calcSquare = 0;
	var calcHalf = 0;
	var calcFraction = 0;
	var calcArea = 0;

	calcSquare = document.getElementById('square-input').value * 2;
	calcHalf = document.getElementById('half-input').value / 2;
	calcFraction = document.getElementById('percent1-input').value / document.getElementById('percent2-input').value;
	calcArea = document.getElementById('area-input').value * (2 * Math.PI);

	//Note: 0/0 will return NaN value, so isNaN() function is needed
	if (isNaN(calcFraction)) {
		calcFraction = 0;
	}

	var ans = "Solutions for: <br> Square number is " +calcSquare+ ". <br> Half this number is " + calcHalf
				+ ". <br> Fraction by these numbers are " +calcFraction+ ". <br> Area of the circle is " +calcArea+"."

	solution.innerHTML = ans;
	body.appendChild(solution);

}

var squareButton = document.getElementById('square-button');
var halfButton = document.getElementById('half-button');
var percentButton = document.getElementById('percent-button');
var areaButton = document.getElementById('area-button');

//Add Click events
// squareButton.addEventListener('click',calculator);
// halfButton.addEventListener('click', calculator);
// percentButton.addEventListener('click', calculator);
// areaButton.addEventListener('click', calculator);

//Add keypress events
squareButton.addEventListener('keypress',calculator);
halfButton.addEventListener('keypress', calculator);
percentButton.addEventListener('keypress', calculator);
areaButton.addEventListener('keypress', calculator);