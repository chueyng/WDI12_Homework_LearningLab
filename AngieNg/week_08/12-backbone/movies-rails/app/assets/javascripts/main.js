
_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
  interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
};

var app = app || {};

app.myCollection = new app.Movies();

app.router = new app.AppRouter();  // "Global" variable so we can use it in other places.
$(document).ready(function () {

  if ($('#main').length === 0) {return;}
  app.myCollection.fetch().done(function () {
    Backbone.history.start({pushState: true});   //Entry point of the application: first code that actually runs.
  });   // Request the Movies via AJAX and add them to the collection.
});