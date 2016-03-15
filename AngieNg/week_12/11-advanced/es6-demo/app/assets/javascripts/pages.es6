var arrayOfNums = [1, 2, 3, 4, 5];
var firstNumber = arrayOfNums[0];
var secondNumber = arrayOfNums[1];

var [firstNumber, secondNumber, ...rest] = arrayOfNums;
console.log(rest);

var obj = {name: "Wolf", employer: "GA"};
var {name, employer} = obj;

console.log(name, employer);
// var testFunctionScope = function () {
//   if (false) {
//     var hello = "World";
//   }

//   console.log( hello ); //undefined
// };

// testFunctionScope();

// var testBlockScope = function () {
//   if (false) {
//     let hello = "World";
//   }
//   console.log(hello);
// };

// testBlockScope();

// let sum = function (a + b){
//   return a + b;
// } // replaced by "let sum = () => a + b;" - function() replaced by "()"

// var countNumbers = function (a, b, c) {
//   var firstNumber = a;
//   var restOfTheNumber =
// }

// let sayHello = function (name) {
//   var name = name || "World";
//   console.log("Hello " + name);
// }

// sayHello();
// sayHello("Kasturi");