var result = null;

setTimeout(function () {
  result = 55 * Math.random();
  console.log('The result is :', result);  
}, 4000);


var button = document.getElementById('clicky');
button.addEventListener('click', function() {
  console.log('button was clicked');
  button.innerHTML = 'Thank you';
  button.disabled = true;
});

var doLater = function (callback) {
  console.log('About to run your callback');

  callback();
  console.log('Just ran your callback');
};

doLater(function () {
  console.log('Hello from inside the callback');
});

var datePrinter = function () {
  var now = new Date();
  console.log('It is now', now);
};

doLater(datePrinter);


var each = function (a, cb) {
  for (var i = 0; i < a.length; i ++) {
    cb (a[i]);
  }
};

var doubler = function (n) {
  console.log(n * 2);
};

var squareRt = function (n) {
  console.log(Math.sqrt(n));
};

var marxer = function (n) {
  console.log(name + ' Marx');
};

each([1,7,19], doubler);
each([1,7,19], squareRt);
each(['Groucho', 'Harpo', 'Chico'], marxer);


