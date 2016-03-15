var searchFlickr = function (query) {

  var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';

    $.getJSON(flickrUrl, {
      method: 'flickr.photos.search',
      api_key: 'f9c8b002f9c35f36363c1ec762c8d2f5',
      text: query,
      format: 'json',
      page: currentPage,
    }).done(function (info) {
      console.log(info);

      displayPhotos(info.photos.photo);
      updatePage();
    });
};

var currentPage = 1;
var updatePage = function () {
  currentPage ++;
  console.log(currentPage);
}

var generateUrl = function (photo) {
  return [
    'http://farm',
    photo.farm,
    '.static.flickr.com/',
    photo.server,
    '/',
    photo.id,
    '_',
    photo.secret,
    '_m.jpg'  //Can change this for different sizes.
  ].join('');
};

var displayPhotos = function (photos) {
  var images = '';
  _.each(photos, function(photo) {
    var photoURL = generateUrl(photo);
    images += '<img src="' +photoURL + '">';
  });
  $('#results').append(images);
};

$(document).ready(function() {
  $('#search').on('submit', function (e) {
    e.preventDefault();

    //Before search query, remove all images and reset currentPage to 1
    $('img').remove();
    currentPage = 1;

    var query = $('#query').val();
    searchFlickr( query );
  });

  var searchAgain = _.debounce(function () {
    var query = $('#query').val();
    $('button').remove();   //Remove all Load More button
    $("<button id='more'>Load More </button>").appendTo('#results');
    $('#more').on('click', function (e) {
      $('button').addClass('hidden');   //Once Load More button clicked, hide it before
      e.preventDefault();
      query = $('#query').val();
      searchFlickr( query );
    });
  }, 100);

  $(window).on('scroll', function () {
    var scrollBottom = $(document).height() - ($(window).height() + $(window).scrollTop());

    if (scrollBottom > 400) {return;} //Fine tune this amount
      searchAgain();
  });
});