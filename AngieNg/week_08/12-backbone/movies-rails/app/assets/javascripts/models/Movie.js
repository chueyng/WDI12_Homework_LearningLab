var app = app || {};

app.Movie = Backbone.Model.extend ({
  urlRoot: '/movies',
  defaults: {
    title: "",
    description: "",
    poster: ""
  },

  initialize: function () {
    console.log('New movie created');
    this.on("add", function() {
      console.log("Movie was added");
    });
  }
});


