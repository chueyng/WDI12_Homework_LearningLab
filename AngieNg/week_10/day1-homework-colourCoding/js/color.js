var colorGenerator = function () {
  return '#' + Math.round(Math.random()*0xFFFFFF).toString(16);
}

var template = function () {
  _(858).times(function() {
    // var hexCode = colorGenerator();
    var hexCode = colorGenerator();
    var rgbCode = parseInt(hexCode.slice(1,3),16) + ',' + parseInt(hexCode.slice(3,5),16) + ',' + parseInt(hexCode.slice(5,7),16);

    $('#colors').append("<div class=" + hexCode + " style='background-color:rgb(" + rgbCode + ");'></div>");
  });
  $('#main').html($('#colors'));
}

$(document).ready(function () {
  template();
  $('#main').hover(function (e) {
    $('#main').css('background-color', e.target.style.backgroundColor);
    $('#main').append('<p>' + e.target.className + ' <=> ' + e.target.style.backgroundColor + '</p>');
    $('#colors').css('visibility', 'hidden');
  });
  $('#main').mouseleave(function (e) {
    $('#main p').remove();
    $('#colors').css('visibility', 'visible');
  });
});
