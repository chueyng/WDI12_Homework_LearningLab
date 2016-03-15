// https://gist.github.com/ga-wolf/8a1672b06d91ee4b2214

// Working with Arrays
// The goal of this exercise is to manipulate arrays by creating a function that can reverse an array and by creating a function that can flatten an array. Do not use any library functions (i.e. .reverse or .each) to complete this task, write this stuff from scratch!

// Make two functions
// reverse
// flatten
// reverse( [1, 2, 3, 4] ); // Should return [ 4, 3, 2, 1 ]
// flatten( ["Hello", ["World", 42] ] ); // Should return [ "Hello", "World", 42 ]
// Only make flatten work to one level deep! You should be able to flatten this - ["Hello", ["World"]] - but not this - ["Hello", [[["World"]]]]

// Hint: You're going to need to be looping through the arrays to get a solution.


var reverse = function (inArray) {
  var result = [];
  for (var i = inArray.length-1; i >= 0; i--) {
    result.push(inArray[i]);
  }
  console.log('Result: ', result);
}


var flatten = function (inArray) {
  var result = [];
  for (var i = 0; i < inArray.length; i++) {
    if (typeof inArray[i] != "object") {
      result.push(inArray[i]);
    } else {
      for (var j = 0; j < inArray[i].length; j++){
        result.push(inArray[i][j]);
      }
    }
  }
  console.log('Result - Flatten: ', result);
}


reverse([1, 2, 3, 4]);
flatten(["Hello", ["World", 42]] );