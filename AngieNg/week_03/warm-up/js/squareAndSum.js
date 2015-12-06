/* https://gist.github.com/ga-wolf/60ae6090f70d36db39aa 

The sum of the squares of the first ten natural numbers is,

1**2 + 2**2 + ... + 10**2 = 385

The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)**2 = 55**2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

Make it so that it doesn't just work for the number 10.

*/

/* Jack's version */
var Squares = {
	sumOfSquares: function(maximum) {
		var sum = 0;

		for (var i= 1; i < maximum; i++) {
			sum += Math.pow(i, 2);
		};

		return sum;
	},

	squareOfSums: function(maximum){
		var sum = 0;
		for (var i = 1; i < maximum; i++) {
			sum += i;
		}

		return sum*sum;
	},

	differenceOfSquares: function(maximum) {
		var squareOfSums = this.squareOfSums(maximum);
		var sumOfSquares = this.sumOfSquares(maximum);

		return squareOfSums - sumOfSquares;
	}
};

Squares.differenceOfSquares(10);

/*
var sumOfTheSquares =  function(inValue){
	var i = 0;
	var result = 0;

	while (i <= inValue) {
		result += Math.pow(i, 2);
		i++;
	}
//	console.log('result =' +result);	
	return result;
}


var squareOfTheSum = function (inValue) {
	var i = 0;
	var sumValue = 0;
	var result = 0;

	while (i <= inValue) {
		sumValue = sumValue + i;
		i++;
	}
//	console.log(Math.pow(sumValue, 2));
	return result = Math.pow(sumValue, 2);

}

var difference = function (inValue){

	return finalResult = squareOfTheSum(inValue) - sumOfTheSquares(inValue) || 0;
}


console.log(difference(10));
*/