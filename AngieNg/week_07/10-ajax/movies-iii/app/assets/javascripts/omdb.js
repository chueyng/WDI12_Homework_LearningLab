$(document).ready(function () {

  var search = function(e) { 
    e.preventDefault(); //Prevent the default browser form submission.

    var query = $('#movie_title').val();

//    $.ajax('http://omdbapi.com/?t=' +query+ '&tomatoes=true').done(function (info) {
    $.ajax('http://omdbapi.com/', {
      data: {
        t: query,
        tomatoes: true,
        luckyNumber:Math.random()
      }
    }).done(function (info) {
      var $img = $('<img />');
      $img.attr('src', info['Poster']);
      $img.prependTo('#results');
    });

  };

  $('form').on('submit', search);

});