// console.log( Backbone, _, $);

var User = Backbone.Model.extend ({
  initialize: function () {
    $('#messages').prepend("New user created");
    this.on("change", function (user) {
      $('#messages').prepend("<p>Something changed on a user </p>");
    });

    this.on("change:name", function() {
       $('#messages').prepend("<p>The name changed on a user </p>");
    })
  }
});

var userOne = new User({name: "Rob"});
var userTwo = new User({name: "Wataru"});
var userThree = new User({name: "Sylvian"});

var Users = Backbone.Collection.extend({
  model: User,

  initialize: function () {
    console.log( "User collection begun" );
  }
});

var users = new Users();

users.add([userOne, userTwo, userThree]);
users.add({
  name: "Colin"
});