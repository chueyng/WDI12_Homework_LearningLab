/*
Create a new Javascript file and link to it with a script tag at the bottom.
(In JS) Change the body tag's style so it has a font-family of "Arial, sans-serif".
(In JS) Replace each of the spans (nickname, favorites, hometown) with your own information.
Iterate through each li and change the class to "listitem". Add a style tag that sets a rule for "listitem" to make the color red.
Create a new img element and set its src attribute to a picture of you. Append that element to the page.
*/

var body = document.getElementsByTagName('body')[0];
body.style.fontFamily = "Arial, sans-serif";

var nickname = document.getElementById('nickname');
nickname.innerHTML = 'Bill';

var favorites = document.getElementById('favorites');
favorites.innerHTML = 'Watching Movies';

var hometown = document.getElementById('hometown');
hometown.innerHTML = 'U.S';

var listItems = document.getElementsByTagName('li');
console.log(listItems);

for (var i = 0; i < listItems.length;  i++) {
	listItems[i].className = 'listitem';
}

var bill = document.createElement('img');
bill.src = "http://fillmurray.com/80/80";
body.appendChild(bill);
