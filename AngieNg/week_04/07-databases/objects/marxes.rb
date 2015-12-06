class MarxBrother
  attr_accessor :name, :instrument, :vice #Creates getter and setter for @name, @instrument, @vice


  def initialize(n=nil, i=nil, v=nil)
    @name = n
    @instrument = i
    @vice = v
  end

  def about
    puts "My name is #{ @name }. I play the #{ @instrument } and I enjoy #{ @vice }"
  end

  # # Getter
  # def name
  #   @name
  # end

  # def instrument
  #   @instrument
  # end

  # def vice
  #   @vice
  # end

  # # Setter
  # def name=(n)
  #   @name = n
  # end

  # def instrument=(i)
  #   @instrument = i
  # end

  # def vice=(v)
  #   @vice = v
  # end

end

h = MarxBrother.new 'Harpo', 'harp', 'hijinx'

c = MarxBrother.new 'Chico'

g = MarxBrother.new
g.name = 'Groucho'
g.instrument = 'guitar'
g.vice = 'cigar'

# h = MarxBrother.new
# h.name = 'Harpo'
# h.instrument = 'harp'
# h.vice = 'hijinx'

require 'pry'
binding.pry