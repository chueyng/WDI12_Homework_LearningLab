// https://gist.github.com/ga-wolf/79539b5b974fe1b56a2c/

// Arrays!
// Log out the answers to all of the following questions!

// Here is some data that you can work with.

// var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
// var bumpyArr = ["hello", "maytag", [[[["sigmonster"]], "swizzle"]]];
// var uncompactedArr = [ "hello", false, NaN, undefined, "quantom bogo-sort" ];

// var arrToTransform = [[ "age", "location" ], [ NaN, undefined ]];
// Create an array of every five numbers between 30 and 101
// Turn bumpyArr into one flat array (no nested arrays)
// Remove all of the falsey elements in the uncompactedArr
// Find all of the unique elements in the following arrays - [ 1, 25, 100 ], [ 1, 14, 25 ] and 24, Infinity, -0
// Find the index of the first element in numbers that is over 7 and is even
// Turn arrToTransform into an object that looks like this - { age: NaN, location: undefined }
// Remember!

// You have the documentation!


var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
var bumpyArr = ["hello", "maytag", [[[["sigmonster"]], "swizzle"]]];
var uncompactedArr = [ "hello", false, NaN, undefined, "quantom bogo-sort" ];

var arrToTransform = [[ "age", "location" ], [ NaN, undefined ]];

//Ex1
//Create an array of every five numbers between 30 and 101
var nums = _.range(30, 101, 5);
console.log(nums);


//Ex2
var flatArr = _.flatten(bumpyArr);
console.log(flatArr);

//Ex3
var compactArr = _.compact(uncompactedArr);
console.log(compactArr);


//Ex4
var arrOne = [1, 25, 100];
var arrTwo = [1, 14, 25];
var arrThree = [24, Infinity, -0];

var uniqueEls = _.union(arrOne, arrTwo, arrThree);
console.log(uniqueEls);


//Ex5
var firstNum = _.findIndex(numbers, function (num) {
  return num > 7 && num % 2 === 0;
});
console.log(firstNum); 

//Ex6
var zippedArray = _.zip(arrToTransform[0], arrToTransform[1]);
var arrToObj = _.object(zippedArray);
console.log(arrToObj);


