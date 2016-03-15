/* 
https://gist.github.com/ga-wolf/1415ca77ae91f0da279d

Accumulate
For example, given the collection of numbers:

1, 2, 3, 4, 5
And the operation:

square a number
Your code should be able to produce the collection of squares:

1, 4, 9, 16, 25
Optional Extras

Square Root a Number
Cube a number
Even and Odd
Or return an object containing all of those things:

{
  original: [1, 2, 3, 4, 5],
  squares: [...],
  squareRoots: [...],
  cubes: [...],
  evenAndOdd: [true, false, true]
}

Restrictions

Keep your hands off that collect/map/fmap/whatchamacallit functionality provided by your standard library!

Solve this one yourself using other basic tools instead.

*/

// var original = [1, 2, 3, 4, 5]

// var squares = [];
// var squareRoots = [];
// var cubes = [];
// var evenAndOdd = [];

// for (var i = 1; i <= original.length; i++) {
//   squares.push(i * i);
//   squareRoots.push(Math.sqrt(i));
//   cubes.push(i*(i*i));

//   if (i % 2 == 0) {
//     evenAndOdd.push(true);
//   } else {
//     evenAndOdd.push(false);
//   }   
// }

// console.log("original: ", original);
// console.log("squares: ", squares);
// console.log("squareRoots: ", squareRoots);
// console.log("cubes: ", cubes);
// console.log("evenAndOdd: ", evenAndOdd);


var squareElements = function (arr) {
  var squares = [];
  for (var i = 0; i < arr.length; i++) {
    var squaredNum = arr[i] * arr[i];
    squares.push(squaredNum);
  }
  console.log(squares);
  return squares;
}

var cubesElements = function (arr) {
  var cubes = [];
  for (var i = 0; i < arr.length; i++) {
    var cubesNum = Math.pow(arr[i], 3);
    cubes.push(cubesNum);
  }
  console.log(cubes);
  return cubes;
}

var trueOrFalse = function (arr) {
  var res = [];
  // for (var i = 0; i < arr.length; i++) {
  //   if (arr[i] % 2 === 0) {
  //     res.push(true);
  //   } else {
  //     res.push(false);
  //   }
  // }

  var even = arr[i] % 2 === 0;
  res.push(even);
  console.log(res);
  return res;
}


squareElements([1, 2, 3, 4, 5]);
cubesElements([1, 2, 3, 4, 5]);
trueOrFalse([1, 2, 3, 4, 5]);