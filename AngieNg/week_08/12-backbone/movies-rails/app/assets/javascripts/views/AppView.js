var app = app || {};

app.AppView = Backbone.View.extend({
  el: '#main',
  render: function() {
    var appViewHTML = $('#appView').html();
    this.$el.html(appViewHTML);

    this.collection.each(function (movie) {
      var movieListView = new app.MovieListView({model: movie});
      movieListView.render();
    });
  }
});
