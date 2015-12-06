# 1.Drinking age?

# Ask the user for their age.
# Remember that anytime you get input, it is a string, so you will need to change the age input to a number.
# If age is less than 18, print an appropriate message.
# If the age is equal to or over 18, print a different message.
# 2. Air Conditioning

# Ask the user what the current temperature is, if the A/C is functional, and what temperature they wish it was.
# If the airconditioner is functional and the current temperature is above the the desired temperature... display "Turn on the A/C Please"
# If the airconditioner is non-functional and the current temperature is above the the desired temperature... display "Fix the A/C now! It's hot!"
# If the airconditioner is non-functional and the current temperature is below the the desired temperature... display "Fix the A/C whenever you have the chance... It's cool..."
# 3. Sydney Suburbs

# Create a program that asks what suburbs you live in.
# Depending on the answer, print an appropriate response of your choosing


#1.Drinking age?
print 'What is your age?'
age = gets.to_i  #optional: Integer(gets.chomp)


if (age < 18)
  puts "You are under 18, give age: #{ age }"
else
  puts "You are over 18, give age: #{ age }"
end

# 2. Air Conditioning
puts 'What is current temperature?'
currTemp = gets.to_i

puts 'Is the A/C functional? (y/n)'
acfunction = gets.chomp.downcase

if acfunction == 'y'
  acfunction = true
else
  acfunction = false
end

print 'If the A/C is functional, what is temperature that you wish?'
desTemp = gets.to_i

puts "#{currTemp}, #{acfunction}, #{desTemp}"

if acfunction && currTemp > desTemp
    puts 'Turn on the A/C please'
else
  if currTemp > desTemp
    puts "Fix the A/C now! It's hot!"
  else
    puts "Fix the A/C whenever you have the chance... It's cool..."
  end
end  

# 3. Sydney Suburbs
print 'What suburb do you live in?: '
suburb = gets.chomp.downcase

# if suburb == "potts point" || suburb == 'mosman' || suburb == 'pymble'
#   puts "Look at me, i am a millionaire"
# elsif suburb == "newtown"
#   puts "Nice maritime cemtery"
# elsif suburb == "dee why"
#   puts "A thousand miles from care"
# else
#   puts "I'm sure that's a very nice place to live"  
# end  

puts case suburb
when 'potts', 'pymble'
  "Look at me, I am a millionaire"
when 'newtown'
  "Nice maritime cemtery"
when 'dee why'
  "A thousand mile from care"
else
  "I'm sure that's a very nice place to live"
end
