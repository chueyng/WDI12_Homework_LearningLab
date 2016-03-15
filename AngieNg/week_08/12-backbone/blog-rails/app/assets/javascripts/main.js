// Blog
// Create posts
// Filter posts
_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
  interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
};

var app = app || {};

// // Seed data
// var postOne = new app.Post({
//   id: 1,
//   title: "First post",
//   content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo dolore quaerat beatae quos, tempora cumque accusantium aperiam nihil recusandae magnam incidunt eum natus dolor, atque ducimus molestias voluptates sed. Eius?'
// });

// var postTwo = new app.Post({
//   id: 2,
//   title: "Startup post",
//   content: 'Something about startups'
// });

app.blog = new app.Posts();


// app.blog.add({
//   id: 3,
//   author: "Zero",
//   title: "Game theory",
//   content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit, voluptate architecto fuga error dolore tempora, quidem consequuntur commodi. Optio dolorum error velit ipsa quas placeat? Nostrum veniam, quo debitis."
// });


app.router = new app.AppRouter();  // "Global" variable so we can use it in other places.
$(document).ready(function () {

  if ($('#main').length === 0) {return;}
  app.blog.fetch().done(function () {
    Backbone.history.start({pushState: true});   //Entry point of the application: first code that actually runs.
  });   // Request the blog posts via AJAX and add them to the collection.
});
