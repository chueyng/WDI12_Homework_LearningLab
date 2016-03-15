var app = app || {};

// Post Model, very similar concept to models in Rails.
app.Post = Backbone.Model.extend ({
  // Defaults serve as documentation for the attributes of a typical post.
  defaults: {
    author: "Terry",
    title: "Untitled"
  },

  // Set up any behavior in here
  initialize: function () {
    console.log("New posts created");
    this.on("add", function () {
      console.log("Post was added to the blog");
    });
  }
});
