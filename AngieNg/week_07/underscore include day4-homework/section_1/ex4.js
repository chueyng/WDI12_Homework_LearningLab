// Get an array of all of the people in people that have the username "E"

var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];

var people = [
  { id: 1, username: "A", active: true,  age: 20 },
  { id: 2, username: "B", active: false, age: 35 },
  { id: 3, username: "C", active: false, age: 50 },
  { id: 4, username: "D", active: true,  age: 65 },
  { id: 5, username: "E", active: true,  age: 80 },
  { id: 6, username: "E", active: true,  age: 95 },
];

_.filter(people, function(person) {
  if (person.username === "E"){
     console.log(person);
  }
});

var ePeople = _.where(people, {username : "E"});
console.log(ePeople);