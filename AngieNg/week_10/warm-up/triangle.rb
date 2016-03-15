# https://gist.github.com/ga-wolf/803859779907e3ad84d6
# Triangles
# The program should return whether it a triangle is equilateral, isosceles or scalene. The program should also raise an error if the triangle cannot exist.

# Extensions:

# Return the area and diameter as well
# Hint

# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side, a principle known as the triangle inequality.
require 'pry'

class Triangle
  def initialize(a, b, c)
    @a, @b, @c = [a, b, c].sort
    @type = determine_type()
    puts @type
  end

  def determine_type
    return :invalid if @a <= 0 || @a + @b < @c
    return :equilateral if @a == @c
    return :isosceles if @a == @b || @b == @c
    :scalene
  end


  tri1 = Triangle.new(4, 3, 6)
end