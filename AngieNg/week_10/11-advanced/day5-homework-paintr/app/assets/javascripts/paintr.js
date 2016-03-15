$(document).ready(function () {
  //Creates a canvas of "pixel" divs for drawing
  var addPixels = function(n) {
    for (var i = 0; i < n; i++) {
      $('<div class="pixel"/>').appendTo("#canvas");
    }
  }

  addPixels(900);

  $('#add').on('click', function () {
    var color = $('#color').val();
    var $swatch = $('<div class="swatch" />');
      $swatch.css('background-color', color);
      $swatch.appendTo('#palette');
  });

  $('#add_bg').on('click', function () {
    var url = $('#url').val();
    $('#canvas').css('opacity', '0.4');
    $('#canvas').css('background', 'url(' + url + ')');
    $('#canvas').css('background-size', 'cover');
  });

  //Delegate listening for the click event to the parent (the #palette div)
  $('#palette').on('click', '.swatch', function () {
    var selectedColor = $(this).css('background-color');
    $('#selected').css('background-color', selectedColor);
  });

  $('#canvas').on('mouseenter', '.pixel', function (e) {
    // if (e.shiftKey === false) { return; }   //Don't paint this pixel
    var selectedColor = $('#selected').css('background-color');
    $(this).css('-webkit-filter', "");
    $(this).css('background-color', selectedColor);
  });

});