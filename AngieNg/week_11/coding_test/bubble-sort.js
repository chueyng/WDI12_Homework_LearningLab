var scores = [5, 4, 8, 10, 15, 0, 100, -1];

var bubbleSort = function (scores) {
  var tmp = [];
  var result = [];
  console.log('scores : ',scores)
  for (var i = scores.length - 1; i >= 0; i--) {
    for (var j = 0; j < i; j++) {
      if (scores[j] > scores[j + 1]) {
        tmp = scores[j + 1]
        scores[j + 1] = scores[j]
        scores[j] = tmp
      }
    }
    result = scores
  }
  return result;
};

console.log( 'result : ', bubbleSort(scores) );