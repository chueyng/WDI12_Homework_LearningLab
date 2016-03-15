var a = function () {
  console.log('entered a');
  b();
  console.log('exiting a');
}

var b = function () {
  console.log('entered b');
  c();
  console.log('exiting b');
}

var c = function () {
  debugger;
  console.log('entered c');
  console.log('exiting c');
}

a();