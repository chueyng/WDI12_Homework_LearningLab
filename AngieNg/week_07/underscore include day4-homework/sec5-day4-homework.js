// https://gist.github.com/ga-wolf/fa989f2ee408f43e11c8

// Utilities, Functions and Chaining!
// Log out the answers to all of the following questions!

// Here is some data that you can work with.

// var people = [
//   { id: 1, username: "A", active: true,  age: 20, uid: 1412 },
//   { id: 2, username: "B", active: false, age: 35, uid: 1352 },
//   { id: 3, username: "C", active: false, age: 50, uid: 5418 },
//   { id: 4, username: "D", active: true,  age: 65, uid: 216  },
//   { id: 5, username: "E", active: true,  age: 80, uid: 18   },
//   { id: 6, username: "E", active: true,  age: 95, uid: 1000 }
// ];

// var startingData = [
//   [["groucho", "marx", 1990], ["firstName", "lastName", "born"]],
//   [["chico",   "marx", 1987], ["firstName", "lastName", "born"]],
//   [["zeppo",   "marx", 2001], ["firstName", "lastName", "born"]],
//   [["harpo",   "marx", 1988], ["firstName", "lastName", "born"]],
//   [["gummo",   "marx", 1992], ["firstName", "lastName", "born"]]
// ];
// Log out 30 random numbers between 20 and 100
// Create a function that can only ever be called once
// Append a paragraph tag to the body for every person in people. It should end up looking something like this - <p> Hello A, you don't look a day over 20 </p>


var people = [
  { id: 1, username: "A", active: true,  age: 20, uid: 1412 },
  { id: 2, username: "B", active: false, age: 35, uid: 1352 },
  { id: 3, username: "C", active: false, age: 50, uid: 5418 },
  { id: 4, username: "D", active: true,  age: 65, uid: 216  },
  { id: 5, username: "E", active: true,  age: 80, uid: 18   },
  { id: 6, username: "E", active: true,  age: 95, uid: 1000 }
];

var startingData = [
  [["groucho", "marx", 1990], ["firstName", "lastName", "born"]],
  [["chico",   "marx", 1987], ["firstName", "lastName", "born"]],
  [["zeppo",   "marx", 2001], ["firstName", "lastName", "born"]],
  [["harpo",   "marx", 1988], ["firstName", "lastName", "born"]],
  [["gummo",   "marx", 1992], ["firstName", "lastName", "born"]]
];


//Ex1 Log out 30 random numbers between 20 and 100
var random = _.times(30, function (num){
  return _.random(20, 100);
});
console.log(random);

//Ex2 - Create a function that can only ever be called once
var hello = _.once(function () {
  console.log("hello");
});
// var callOnce = _.once(hello);


//Ex3 - Append a paragraph tag to the body for every person in people. It should end up looking something like this -
// <p> Hello A, you don't look a day over 20 </p>
var templateHTML = _.template("<p> Hello <%= username %>, you don't look a day over <%=age%> </p>");

_.each(people, function (person) {
  var html = templateHTML(person);
  console.log(html);
});


//The Final Exercise
/*
console.log(startingData);
var rearrangeData = _.map(startingData, function (data) {
//  console.log(data);
  var unzipData = _.unzip(data);
  var changeToObj = _.object(unzipData);
  console.log("changeToObj = ", changeToObj);

  var invertObj = _.invert(changeToObj);
  console.log("invert = ", invertObj);

  var mapObj = _.mapObject(invertObj, function(value, key) {

    if (key == "born") {
      return value = parseInt(value) - 100;
    } else {
      return value = value.charAt(0).toUpperCase() + value.slice(1);
    }
  });
  console.log("mapObject = ", mapObj);

  var templateHTML = _.template("<%=firstName%> <%=lastName%> was born in <%=born%>.");
  var html = templateHTML(mapObj);
  console.log(html);
});
*/

var result =_.chain(startingData)
            .map(function(data) {
              // return _(data).chain().unzip().object().invert();
              var entry = _.unzip(data);
              entry = _.object(entry);
              entry = _.invert(entry);
              return entry;
            })
            .mapObject(function (value) {
                  console.log("value = ", value);
                  if (value["born"]) {
                    value['born'] = parseInt(value['born']) - 100;
                  }
                  if (value['firstName']) {
                    value['firstName'] = _.first(value['firstName']).toUpperCase() + value['firstName'].slice(1);
                  }
                  if (value['lastName']) {
                    value['lastName'] = _.first(value['lastName'].toUpperCase()) + value['lastName'].slice(1);
                  }
                  return value;
            })
            .value();


var templateHTML = _.template("<%=firstName%> <%=lastName%> was born in <%=born%>.");
var html = _.map(result, templateHTML);
console.log(html);


