var app = app || {};

app.MovieView = Backbone.View.extend({
  el: '#main',
  render: function() {
    var movieViewTemplater = _.template($('#movieView').html());
    this.$el.html(movieViewTemplater(this.model.toJSON()));
  }
});
