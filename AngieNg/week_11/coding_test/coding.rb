# https://gist.github.com/wofockham/5068b50b9b73d2fb9f74

class Coding

  def initialize(v)
    @value = v
    # @result1 = reverseStr
    # @result2 = fibonacci
    # @result3 = multiplication
    # @result5 = showOdds
    # @result6 = largestValue
    @result7 = rgbToHex

    # puts @result1
    # puts @result2
    # puts @result3
    # puts @result6
    puts "##{@result7}"
  end

  def reverseStr
    @value = @value.to_s
    @value.each_char.to_a.reverse.join('')
  end

  def fibonacci
    @value = @value.to_i
    total = 0
    old = 0
    new = 1

    (2..@value).each do
      total = old + new
      old = new
      new = total
    end
    total
  end

  def multiplication

    @max = @value.to_i + 1
    total = 0

    @max.times do | i |
      @max.times do | j |
        total = i * j
        puts "#{j} * #{i} = #{total}"
      end
    end
  end

  def showOdds
    @max = @value.to_i + 1

    @max.times do | i |
      puts i if i % 2  != 0
    end
  end

  def largestValue
    @result = @value.each_with_index.max
  end

  def rgbToHex
    @value.map { |i|
      @result = i.to_s(16)
    }.join
  end

  # reverseString = Coding.new('string')
  # fibonacci = Coding.new(16)
  # multiplictionTable = Coding.new(12)
  # odds = Coding.new(99)
  # largestValue = Coding.new([12, 43, 100, 200])
  hex = Coding.new([255, 255, 255])
end
