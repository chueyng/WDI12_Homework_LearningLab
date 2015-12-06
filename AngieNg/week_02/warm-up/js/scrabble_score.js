/*
Scrabble Score
Write a JS function that, given a word, computes the scrabble score for that word.

It should look like the following:

Scrabble.score("cabbage")
# => 14
Letter Values

Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
Extensions (we won't tell you how to implement this!)

You can play a :double or a :triple letter.
You can play a :double or a :triple word.
*/


var scrabble_value = { value_1 : ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'], 
				       value_2 : ['D', 'G'],
				       value_3 : ['B', 'C', 'M', 'P'],
				       value_4 : ['F', 'H', 'V', 'W', 'Y'],
				       value_5 : ['K'],
				       value_8 : ['J', 'X'],
				      value_10 : ['Q', 'Z']};

var totalReturnScoreValue = 0;

var scrabble_score = function (inLetter) {

var returnScoreValue = 0;
	
	if (scrabble_value.value_1) {
		returnScoreValue = 1;
	} else if (scrabble_value.value_2) {
		returnScoreValue = 2;
	} else if (scrabble_value.value_3) {
		returnScoreValue = 3;
	} else if (scrabble_value.value_4) {
		returnScoreValue = 4;
	} else if (scrabble_value.value_5) {
		returnScoreValue = 5;
	} else if (scrabble_value.value_8) {
		returnScoreValue = 8;
	} else if (scrabble_value.value_10) {
		returnScoreValue = 10;
	}

	for (var i = 0; i < inLetter.length; i++) {
		console.log("**** = " + scrabble_value.value_1  + "*** inLetter = " +inLetter[i]);
		/*
		if (((scrabble_value.value_1).indexOf(inLetter[i]) > -1) || ((scrabble_value.value_2).indexOf(inLetter[i]) > -1 )
			|| ((scrabble_value.value_3).indexOf(inLetter[i]) > -1) || ((scrabble_value.value_4).indexOf(inLetter[i]) > -1) 
			||  ((scrabble_value.value_5).indexOf(inLetter[i]) > -1) || ((scrabble_value.value_8).indexOf(inLetter[i]) > -1)
			|| ((scrabble_value.value_10).indexOf(inLetter[i]) > -1)) {
			
			console.log("returnScore = " +returnScoreValue[i] );
			totalReturnScoreValue = totalReturnScoreValue + returnScoreValue[i] ;
		}
		*/
	}	

	return totalReturnScoreValue;	
}
/*
	for (var i = 0; i < scrabble_value.length; i++) {
		if ()
		console.log("hi");
			console.log(inLetter + " *** scrabbleValue = " +scrabble_value[i]);

		var totalScore = 0;
		inLetter = inLetter.toUpperCase();


		for (var j = 0; j < inLetter.length; j++) {

			if (inLetter[j].indexOf(scrabble_value[i]) > -1){
				console.log(scrabble_value[i]);
				totalScore += scrabble_value[i,j] ;
			}	
		}	
	}
	return totalScore;
}
*/


console.log(scrabble_score('cabbage'));



/** Jack version **/
/*
var letterScores = {'a': 1, 'e': 1, 'i': 1, 'o': 1, 'u': 1, 'l': 1, 'n': 1, 'r': 1, 's': 1, 't': 1, 'd': 2,'g': 2, 'b': 3, 'c': 3, 'm': 3, 'p': 3, 'f': 4, 'h': 4, 'v': 4, 'w': 4, 'y': 4, 'k':5, 
'j': 8, 'x': 8, 'q': 10, 'z': 10};

var score = function (word) {
	var wordScore = 0;
	word = word.toLowerCase();

	var letterScore = letterScores[letter] || 0;
	wordScore += letterScore;


	console.log("The score of the word " +word + "is " + wordScore + ".");
	return wordScore;

};

score('cabbage');
*/