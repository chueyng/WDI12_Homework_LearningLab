var binarySearch = function (input) {
  var low = 0;
  var mid = 0;
  var not_found = "Input not found";
  var high = arr.length - 1;

  while (low <= high) {
    mid = (low + high) / 2;

    if (arr[mid] > input) {
      return high = mid - 1;
    } else if (arr[mid] < input) {
      return low = mid + 1;
    } else {
      return mid
    }
  }
  return not_found
}


var arr = [4, 5, 7, 12, 45];
var search = binarySearch(12);
console.log(search);