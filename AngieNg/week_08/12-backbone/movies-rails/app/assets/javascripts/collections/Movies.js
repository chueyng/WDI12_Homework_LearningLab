var app = app || {};

app.Movies = Backbone.Collection.extend({
  model: app.Movie,
  url: '/movies',
  initialize: function () {
    this.on("add", function () {
      console.log("New movies added into my collection.");
    });
  }
});