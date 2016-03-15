var reverse = function (input) {
  return input.split('').reverse.join('');
}

console.log(reverse('hotdogs'));

//Vanilla version
var reverse = function (input) {
  var output = [];

  for (var i = 0 i < input.length; i++ ){
    output.unshift(input[i]);
  }
  return output.join('')
}

console.log(reverse('hotdogs'))