var app = app || {};

app.MovieListView = Backbone.View.extend({
  tagName: 'li',
  events: {
    'click': 'showMovie'
  },
  showMovie: function () {
    app.router.navigate('movies/' +this.model.get('id'), true);
  },
  render: function () {
    this.$el.text(this.model.get('title'));
    this.$el.appendTo('#movies');
  }
});
