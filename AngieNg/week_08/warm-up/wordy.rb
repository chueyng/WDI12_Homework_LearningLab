# https://gist.github.com/ga-wolf/27360727e8866594e3a4

# Wordy Addition
# Write a program that takes a word problem in the format:

# What is 5 plus 13?
# and returns the answer as an integer.

# The program should handle large numbers and negative numbers.

# Use the tests to drive your solution by deleting the skip in one test at a time.

# Source

# Inspired by one of the generated questions in the Extreme Startup game.


class Calculator

  def ask (question)
    # What is 1 plus 1?
    result = question.match(/What is (-?\d+) (\w+.*) (-?\d+)\?/)
    puts result

    if result[2] == 'plus'
      result[1].to_i + result[3].to_i
    elsif result[2] == 'minus'
      result[1].to_i - result[3].to_i
    elsif result[2] == 'multiplied by'
      result[1].to_i * result[3].to_i
    elsif result[2] == 'divided by'
      result[1].to_i / result[3].to_i
    end

  end

end
