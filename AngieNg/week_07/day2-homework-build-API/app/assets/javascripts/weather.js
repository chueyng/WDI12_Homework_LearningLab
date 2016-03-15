$(document).ready(function () {
  var search = function(e) { 
    e.preventDefault(); //Prevent the default browser form submission.
    //Clear image before start
    $('img').removeAttr('src'); 
    
    var query = $('#city_name').val();
    $.ajax('http://api.openweathermap.org/data/2.5/forecast/daily', {
      data: {
        q: query,
        mode: 'json',
        cnt: 7,
        units: 'metric',
        appid: '79339dcd33888aa8b54cdcb35e454fd5'
      }
    }).done(function (info) {
      var date = [];
      var icon_image = [];
      var temp = [];
      var weather = [];

      $('#result').html('<h2>' + info['city']['name'] + ', ' + info['city']['country'] + '</h2>');
      $('#updated_date').html('<small>Last updated: ' +moment.unix(info['list'][0]['dt']).format('LLL')+ '</small>');

      for (var i = 0; i < info['list'].length; i++) {        
        date.push(moment.unix(info['list'][i]['dt']).format('dddd'));

        var image = info['list'][i]['weather'][0]['icon'];
        icon_image.push("http://openweathermap.org/img/w/" + image + '.png');
        temp.push((info['list'][i]['temp']['day']).toFixed(1) + '°C');
        weather.push(info['list'][i]['weather'][0]['description']);
      }
      console.log(info);

      $('#day').html('<ul><li><p><strong>' +date.join('</strong></p></li><li><p><strong>') + '</strong></p></li></ul>');
      $('#temp').html('<ul><li>' +temp.join('</li><li>') + '</li></ul>');
      icon_image.map(function(icon_url) {
        var img = new Image();
        img.src = icon_url;
        img.id = 'icon';
        $('#icons').append(img);
      });
      $('#status').html('<ul><li>' + weather.join('</li><li>') + '</li></ul>');
    });
  };
  $('form').on('submit', search);
}); 


