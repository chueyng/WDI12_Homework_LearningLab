# print "Enter a number :"
# number = gets.to_i

# words = ""

# if (number % 3 != 0 && number % 5 != 0 && number % 7 != 0)
#   words = number.to_s
# end
# if number % 3 == 0
#     words += "Pling "
# end
# if number % 5 == 0
#     words = words + "Plang "
# end
# if number % 7 == 0
#     words = words + "Plong "
# end
  
# puts words

require('pry')

def convert ( num )
  str = ""
  
  str += "Pling" if num % 3 == 0
  str += "Plang" if num % 5 == 0
  str += "Plong" if num % 7 == 0
    
end

binding.pry  #In console, must type "convert(28) to run the function and print the output"


