var app = app || {};  // Global namespace

app.SecretInputView = Backbone.View.extend ({
  el: '#secretForm',  // Refrencing an existing form
  events: {           // Add bunch of events and tell backbone waht functions to call
    'click button': 'createSecret',
    'keypress textarea': 'checkForEnter'
  },

  checkForEnter: function (event) {
    app.ENTER_KEY = 13;   // 13 is the keyCode on most computers

    if (event.which === app.ENTER_KEY) {
      // event.which tells us which key was pressed
      event.preventDefault();   // This stops the enter key from doing enything
      this.createSecret();    // Then we call the createSecret function
    }
  },

  createSecret: function () {
    console.log("Secret should be made here");
    var currentSecret = this.$el.find('textarea').val();
    if (currentSecret.length === 0) { return; }

    var secret = new app.Secret();    //Create a new "instance"
    // Find the textarea within the el, and saves its value
    secret.set({content: currentSecret});
    // On the instance of the secret, store the content
    secret.save();  // Send this secret up to the server

    app.secrets.add( secret );  // Add this secret to the main collection
    this.$el.find('textarea').val('').focus();
    // Find the textarea and remove all the text, and then pick our cursor in there
  },

  render: function () {
    console.log('Secret Form ready to go');
    var secretInputViewTemplate = $('#secretInputViewTemplate').html();
    this.$el.html( secretInputViewTemplate );
  }
});