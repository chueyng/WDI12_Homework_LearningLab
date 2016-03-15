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

