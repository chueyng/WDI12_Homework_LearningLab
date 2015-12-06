# print 'Enter a year: '
# year = gets.to_i

#   if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
#     puts "This #{year} year is a Leap Year"
#   else
#     puts "This #{year} year is NOT Leap Year"
#   end

require 'pry'

def is_leap_year?( year )
 
  if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
    true
  else
    false
  end

end

binding.pry

