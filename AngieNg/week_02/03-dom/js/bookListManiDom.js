/*
Iterate through the array of books. For each book, create a p element with the book title and author and append it to the page.
Bonus: Use a ul and li to display the books.
Bonus: add a property to each book with the URL of the book cover, and add an img element for each book on the page.
Bonus: Change the style of the book depending on whether you have read it or not.
*/

var books = [
  {title: 'The Design of EveryDay Things',
   author: 'Don Norman',
   alreadyRead: false
  },
  {title: 'The Most Human Human',
  author: 'Brian Christian',
  alreadyRead: true
  }];


var body = document.getElementsByTagName('body')[0];

var listBooks = function (){

	/* Section One 
	for (var i = 0; i < books.length; i++) {
		console.log(books[i]);
		var newBooklist = document.createElement('p');
		var newTextNote = document.createTextNode('Book Title: ' + books[i]['title'] + '<br> Author: ' + books[i]['author'] + '<br> Already Read: ' + books[i]['alreadyRead']
);
		newBooklist.appendChild(newTextNote);
		body.appendChild(newBooklist);
	}	
 
		// Create list items
		var ul = document.createElement('ul');

		for (var j = 0; j < books.length; j++) {
			var li = document.createElement('li');

			ul.innerHTML = books[j]['title'];
			li.innerHTML = books[j]['author'];
			li.innerHTML = books[j]['alreadyRead'];

			ul.appendChild(li);
			body.appendChild(ul);
		}	
	*/
		/** Joel version **/
		var body = document.getElementsByTagName('body')[0];
		var ul = document.createElement('ul');
		body.appendChild(ul);
		
		for (var i=0; i < books.length; i++) {
			var book = books[i];

			//Create a paragraph with the title and author
			var paragraph = document.createElement('p');
			paragraph.innerHTML = [book.title, 'by', book.author].join(' ');

			if (book.alreadyRead) {
				paragraph.style.color = "#ccc";
			}

			// Store the paragraph in a list item node
			var li = document.createElement('li');
			li.appendChild(paragraph);

			// Display the list item node by inserting into the UL created earlier
			ul.appendChild(li);

			//body.appendChild(paragraph);
		}
}

listBooks();

