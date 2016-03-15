/*
Atbash Cipher
The Atbash cipher is a simple substitution cipher that relies on transposing all the letters in the alphabet such that the resulting alphabet is backwards. The first letter is replaced with the last letter, the second with the second-last, and so on.

An Atbash cipher for the Latin alphabet would be as follows:

Plain:  abcdefghijklmnopqrstuvwxyz
Cipher: zyxwvutsrqponmlkjihgfedcba
It is a very weak cipher because it only has one possible key, and it is a simple monoalphabetic substitution cipher. However, this may not have been an issue in the cipher's time.

Examples

Encoding "test" gives "gvhg"
Decoding "gvhg" gives "test"
*/


var LETTERS = "abcdefghijklmnopqrstuvwxyz";
var REVERSE_LETTERS = LETTERS.split("").reverse().join("");

var encrypt = function (str) {
  str = str.toLowerCase();
  var encodedText = "";

  for (var i = 0; i < str.length; i++) {
    var letter = str[i];
    var indexOfChar = LETTERS.indexOf(letter);
    var reverseChar = REVERSE_LETTERS.charAt(indexOfChar);
    encodedText += reverseChar;
  }

  console.log('EncodedTest = ',encodedText);
  return encodedText;
}

var decrypt = function (str) {
  str = str.toLowerCase();
  var decodedText = "";

  for (var i = 0; i < str.length; i++) {
    var letter = str[i];
    var indexOfChar = REVERSE_LETTERS.indexOf(letter);
    var char = LETTERS.charAt(indexOfChar);
    decodedText += char;
  }
  console.log(decodedText);
  return decodedText;
}

encrypt("te");
decrypt("gvhg");
