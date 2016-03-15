var app = app || {};

app.AppRouter = Backbone.Router.extend ({
  routes: {
    '': 'index',
    'movies/:id': 'viewMovie'
  },

  index: function () {
    var appView = new app.AppView({collection: app.myCollection});
    appView.render();
  },

  viewMovie: function (id) {
    var movie = app.myCollection.get(id);
    var movieView = new app.MovieView({model: movie});
    movieView.render();
  }
});
