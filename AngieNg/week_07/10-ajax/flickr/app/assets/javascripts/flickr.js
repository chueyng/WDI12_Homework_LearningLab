var currentPage = 1;
var reachedEnd = false;

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
      if (info.photos.page >= info.photos.pages) {
        reachedEnd = true;
      }
      currentPage++;
    });
};

var debouncedSearchFlickr = _.debounce(searchFlickr, 4000, true);

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
    '_q.jpg'  //Can change this for different sizes.
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

    var query = $('#query').val();    
    searchFlickr( query );
  });

  $('#query').on('change', function () {
    currentPage = 1;
    reachedEnd = false;
    $('#results').empty();
  })

  $(window).on('scroll', function () {
    var scrollBottom = $(document).height() - ($(window).height() + $(window).scrollTop());

    if (scrollBottom > 400) {return;} //Fine tune this amount
    
    var query = $('#query').val(); 
    debouncedSearchFlickr(query);
  });
});