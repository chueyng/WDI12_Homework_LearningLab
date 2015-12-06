/*
Step by Step:

Create an array of every link on the page using document.querySelectorAll(cssSelector)
Iterate through the array. In each iteration of the loop:

Find the current href using element.getAttribute(name), and store into a variable
Generate a thumbnail URL using youtube.generateThumbnailUrl(videoUrl)
Create an IMG element using document.createElement(tagName)
Set the "src" of the IMG element using element.setAttribute(name, value)
Append the IMG to the link using element.appendChild(element)
Quick Tip: If you need a refresher on the DOM API, check out slides 1-12 from the DOM Review here
*/


var $vids = $('li a');

$vids.each(function () {

	var link = $(this).attr('href');
	console.log(link);
	var thumbnailURL = youtube.generateThumbnailUrl(link);

	var $thumb = $('<img>').attr('src', thumbnailURL);
	console.log$thumb;

	$(this).append($thumb);

	$thumb.hide();
	$thumb.fadeIn(4000).fadeOut(2000);

});



/** Shortest version and not recommended because hard to debug **/

	// $('li a').each(function () {
	// 	$('<img>').attr('src', youtube.generateThumbnailUrl($(this).attr('href') )).appendTo(this);
	// });
		



