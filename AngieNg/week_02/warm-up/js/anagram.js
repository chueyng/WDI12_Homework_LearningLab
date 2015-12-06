/*
Firstly, a matches function which receives a word and an array of words
Secondly, an areAnagrams function that does all the 
Thirdly, a hasSameLetters function

*/
/* Jack's version */

var Anagram = {
	hasSameLetters: function (word, candidates) {
		word = word.split("").sort().join("");
		candidates = candidates.split("").sort().join("");
		
		return word === candidates;
	},

	areAnagrams: function(word, candidates) {
		//Turn both word and candidate into lower case
		word = word.toLowerCase();
		candidates = candidates.toLowerCase();

		//We want to make sure they have the same letters
		//We want to make sure they aren't equal

		if (Anagram.hasSameLetters(word, candidates) && word !== candidates) {
			return true;
		}
		return false;

		// return Anagram.hasSameLetters(word, candidates) && word ! == candidates; 
	},

	matches: function (word, candidates) {
		var anagrams = [];
		console.log(candidates);

		for (var i = 0; i < candidates.length; i++) {
			var potientialWords = candidates[i];
			console.log(word, potientialWords);

			if (Anagram.areAnagrams(word, potientialWords)) {
				anagrams.push(potientialWords);
			}

		}
		console.log(anagrams);
		return anagrams;
	}
};

var word = "listen";
var potientialWords = ["enlists", "inlets", "preserve"];
Anagram.matches(word, potientialWords);

/*
var Anagram = {

	wordList : ['enlists', 'google', 'inlets', 'banana'],

	eachWordfromListing : function () {
		for (var i = 0; i < wordList.length; i++) {
			return eachWord = wordList[i];
	}

	charCheck : function (word) {
		var eachWord = Anagram.eachWordfromListing();

		for (var j = 0; j < eachWord.length; j++) {
			for (var k = 0; k < word.length; k++) {
				if (eachWord[j].indexOf(word[k])) >  0){
					return eachWord;
				}
			}
		}
	}

}

console.log(Anagram.charCheck('listen'));

*/