// https://gist.github.com/ga-wolf/0eb9595f074af427d6b8
// Objects!
// Log out the answers to all of the following questions!

// Here is some data that you can work with.

// var objectToMap = {
//   start:  100,
//   middle: 853,
//   end:    912
// }
// Multiply each value in objectToMap by a random number and return an object with the changed values
// Get an array version of objectToMap that looks like this - [["start", 100], ["middle", 853], ["end", 912]]
// Flip objectToMap around so that it looks like this - { "100" : "start", "853" : "middle", "912" : "end" }
// Remove the "start" key from objectToMap in two different ways

var objectToMap = {
  start:  100,
  middle: 853,
  end:    912
}

//Ex1 - Multiply each value in objectToMap by a random number and return an object with the changed values

var multiply = _.mapObject(objectToMap, function (val) {
  return val * Math.random();
});
console.log(multiply);

//Ex2 - Get an array version of objectToMap that looks like this - [["start", 100], ["middle", 853], ["end", 912]]
var objectArr = _.pairs(objectToMap);
console.log(objectArr);

//Ex3 - Flip objectToMap around so that it looks like this - { "100" : "start", "853" : "middle", "912" : "end" }
var invertArr = _.invert(objectToMap);
console.log(invertArr);

//Ex4 - Remove the "start" key from objectToMap in two different ways
var removeStartKey = _.omit(objectToMap, 'start');
console.log(removeStartKey);

var removeStartKey2 = _.pick(objectToMap, 'middle', 'end');
console.log(removeStartKey2);