
# MTA Lab
# Objectives:

# Apply your knowledge of Javascript to solve a real world problem.
# Get really good at array manipulation.
# Activity

# Create a program that models a simple subway system.

# The program takes the line and stop that a user is getting on at and the line and stop 
# that user is getting off at and prints the journey and the total number of stops for the trip in the console:

# planTrip('N', 'Times Square', '6', '33rd'); // This is only a suggested function name and signature.

# // console.log() shows output similar to this:
# // "Your must travel through the following stops on the N line: 34th, 28th, 23rd, Union Square."
# // "Change at Union Square."
# // "Your journey continues through the following stops: 23rd, 28th, 33rd."
# // "7 stops in total."
# There are 3 subway lines:
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
# All 3 subway lines intersect at Union Square, but there are no other intersection points. (For example, 
# this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have 
# to differentiate this when you name your stops in the arrays.)
# Tell the user the number of stops AND the stops IN ORDER that they will pass through or change at.
# Hints:

# Work out how you would do it on paper first! Then start to explain that process in Javascript.
# - Get the program to work for a single line before trying to tackle multiple lines.
# - Don't worry about prompting the user for input. Hard code some values to get it working. You can use prompt()
# later to make it more interactive.
# - Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
# - The key to the lab is finding the index positions of each stop. (hint: indexOf())
# - Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 
# 6 need to be differentiated)

require 'pry'

def prompt(message)
  print message
  gets.chomp
end

def tripQueries
  puts "The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th"
  puts "The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st"
  puts "The SIX line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place."

  firstLine = prompt("Enter departure line :").upcase
  firstStation = prompt("Enter departure station :")
  endLine = prompt("Enter arrival line :").upcase
  endStation = prompt("Enter arrival station :")

  planTrip(firstLine, firstStation, endLine, endStation)
end


def subway
  { "N" => ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
    "L" => ['8th', '6th', 'Union Square', '3rd', '1st'],
    "SIX" => ['Grand Central', '33rd', '28th_street', '23rd_street', 'Union Square', 'Astor Place']
  }
end


def planTrip (firstLine, firstStation, secondLine, endStation)
  intersection = 'Union Square'

  #All stop in ONE line
  if secondLine === firstLine
    tripStartStation = tripCount(firstLine, firstStation, endStation)
    tripEndStation = 0

    # Show trip plans
    firstStation_index = subway[firstLine].index firstStation
    endStation_index = subway[firstLine].index endStation

    if endStation_index > firstStation_index
      display_trip_stops = subway[firstLine][firstStation_index..endStation_index].each {|value| value}
    else
      display_trip_stops = subway[firstLine][endStation_index..firstStation_index].reverse.each {|value| value}
    end  

    display_message = "Your must travel through the following stops on '" +firstLine+ "' line: " + display_trip_stops.join(", ")+"."

  else
    tripStartStation = tripCount(firstLine, firstStation, intersection)
    tripEndStation = tripCount(secondLine, intersection, endStation)  

    firstStation_index = subway[firstLine].index firstStation
    intersection_end_index = subway[firstLine].index intersection

    # Show trip plans
    if intersection_end_index > firstStation_index
      first_half_trip_stops = subway[firstLine][firstStation_index..intersection_end_index].each {|value| value}
    else
      first_half_trip_stops = subway[firstLine][intersection_end_index..firstStation_index].reverse.each {|value| value}
    end    

    intersection_start_index = subway[secondLine].index intersection
    endStation_index = subway[secondLine].index endStation

    if endStation_index > intersection_start_index
      end_half_trip_stops = subway[secondLine][intersection_start_index..endStation_index].each {|value| value}
    else
      end_half_trip_stops = subway[secondLine][endStation_index..intersection_start_index].reverse.each {|value| value}
    end   

    ### Do some conversion for the followings:
    first_half_trip_stops.pop
    end_half_trip_stops.shift

    first_half_trip_stops = first_half_trip_stops.join(", ")
    end_half_trip_stops = end_half_trip_stops.join(", ")

    display_message = "Your must travel through the following stops on '" +firstLine+ "' line: " + first_half_trip_stops +"."
    display_message2 = "Change at Union Square"
    display_message3 = "Your journey continues through the following stops on '" +secondLine+ "' line: " + end_half_trip_stops +"."

  end


  totalTripStops = tripStartStation + tripEndStation

  if totalTripStops.to_i >  0
    puts display_message
    unless display_message2.nil?
      puts display_message2
      puts display_message3
    end  
    puts "#{totalTripStops} stops in total."
  elsif totalTripStops.to_i == 0
    puts "You're at here now."
  end  
end  


def tripCount (subwayLine, startStop, endStop) 
  startStopTrip = subway[subwayLine].index startStop 
  endStopTrip = subway[subwayLine].index endStop
  trip_Stops = (endStopTrip.to_i - startStopTrip.to_i).abs

  trip_Stops
end



tripQueries()
