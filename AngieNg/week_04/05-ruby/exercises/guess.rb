# Title: Guess The Number
# Activity:

# You are to generate a basic "guess my number" game. The computer will pick a random number between 0 and 10. The user will guess the number until they guess correctly.
# Specification:

# The user should be asked to guess a number
# If the user's guess is correct, the user should see a congratulatory message
# If the user's guess is not correct, the user should be asked to guess the number again.
# Extensions:

# Let the user choose the maximum value (so they can play a long game with a random value between 0 and 10000, for example).
# Give feedback to the user: "Wrong, guess higher!" or "Wrong, guess lower!"


# secret_number = Random.rand 0..10

# print "What's your guess number (0 - 10)?: "
# guess_num = gets.to_i

# until secret_number == guess_num
#   puts "Sorry, your guess is not correct."

#   print "What is your guess number (0 - 10)? Answer is #{secret_number}: "
#   guess_num = gets.to_i  
# end

# puts "You got it!"

print "What is maximum number?: "
max_number = gets.to_i

secret_number = Random.rand 0..max_number

print "What is your guess (0 - #{max_number})?: "
guess_num = gets.to_i

until secret_number == guess_num
  if guess_num > secret_number
    puts "Wrong, guess lower!"
  else
    puts "Wrong, guess higher!"
  end

  print "What is your guess (0 - #{max_number}?: "
  guess_num = gets.to_i
end  

puts "You got it!"
