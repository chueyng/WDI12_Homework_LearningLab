/*
Age
Write a program that, given an age in seconds, calculates how old someone is in standard Earth years.

Then use the program to answer the following question: If I am 1031 million seconds old, how old am I?

Extensions

Given an age in seconds, calculate how old someone would be on:

Mercury (orbital period 0.2408467 Earth years)
Venus (orbital period 0.61519726 Earth years)
Mars (orbital period 1.8808158 Earth years)
Jupiter (orbital period 11.862615 Earth years)
Saturn (orbital period 29.447498 Earth years)
Uranus (orbital period 84.016846 Earth years)
Neptune (orbital period 164.79132 Earth years)
An Earth year is roughly 365.25 days, or 31557600 seconds.

If you're wondering why Pluto didn't make the cut, go watch this youtube video.

Source

Partially inspired by Chapter 1 in Chris Pine's online Learn to Program tutorial.
*/

/*
var planets = [{ Mercury: 0.2408467 }, 
			   { Mars: 1.8808158 },
			   { Jupiter: 11.862615 },
			   { Saturn: 29.4474498 },
			   { Uranus: 84.016846 },
			   { Neptune: 164.79132 } ]

var earthYearInDays  =  365.25;
var earthYearInSecond = 31557600;
var earthYearForEachSecond = 31557600 / 365.25;

var calcAge = function (inAgeSeconds) {

	var ageInMercury = inAgeSeconds / (planets[Mercury] * earthYearForEachSecond);
	console.log(planets[0].Mercury);
	return ageInMercury;
}


console.log(calcAge(1031000000));

*/

/* Jack Version */
var SpaceAge = {

	orbitalPeriods: {
		Mercury: 0.2408467, 
	    Mars: 1.8808158,
	    Jupiter: 11.862615,
	    Saturn: 29.4474498,
	    Uranus: 84.016846,
	    Neptune: 164.79132
    },

	ageOnEarth : function (seconds) {
		return seconds / 315557600;
	}

	ageOnOtherEarth : function (planetName, seconds) {
		var yearsOnEarth = SpaceAge.ageOnEarth(seconds);

		var yearRatio = SpaceAge.orbitalPeriods[planetName];

		var ageOnPlanet = yearOnEarth * yearRatio;

		console.log(yeSpaceAge.orbitalPeriods[planetName] + "*** " +SpaceAge.orbitalPeriods.planetName);

		return ageOnPlanet;
	}
}

ageOnOtherEarth('Mercury', 103100); 