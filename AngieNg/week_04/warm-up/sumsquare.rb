# Sum of Squares and Squares of Sums
# The sum of the squares of the first ten natural numbers is,

# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)**2 = 55**2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

# Make it so that it doesn't just work for the number 10.

require 'pry'

# Jack's version

def sum_of_squares( num = 10)
  result = 0
  1.upto( num ) { |i| result += (i ** 2) }

  result

end

def square_of_sums( num = 10)
  # Have an array of numbers and reduce them by all together

  sum = 0
  # 1.upto( num ) { |i| result += i }
  # puts result ** 2

  sum = (1..num).to_a.reduce(0) { |sum, current_num| sum += current_num } ** 2
  # (1..num).reduce(0) { |sum, current_num| sum += current_num }
  # (1..num).reduce {|sum, current_num| sum *= current_num}
  # (1..num).reduce(0, :+)
  # (1..num).inject(0, :*)
  # (1..num).inject(:+) ** 2

end  


def difference_of_squares (num)
  puts square_of_sums  - sum_of_squares 
end

# def sum_of_squares
#   sum = 0

#   (1..10).each do | value |
#     sum += value**2
#     # puts "#{sum}"
#   end
#     result = sum
# end

# def squares_of_sum
#   sum = 0
#   result = 0

#   (0..10).each do | value |
#     sum += value
#   end
#   result = sum ** 2
# end

# def difference
#   result = 0

#   result = squares_of_sum.to_i - sum_of_squares.to_i  
#   puts "#{result}"

# end

# difference()
binding.pry


