class Luhn
  def self.create(n)
    candidate = n * 10
    luhn = Luhn.new candidate
    return candidate if luhn.valid?
    candidate + 10 - (luhn.checksum % 10)
  end


  def initialize(n)
    @number = n
  end

  def check_digit
    # @number.to_s.chars.last.to_i
    @number % 10
  end

  def addends
    @number.to_s.chars.reverse.each_with_index.map do |d, i|
      if i.even?
        d.to_i
      else
        td = d.to_i * 2
        td -= 9 if td > 9
        td
      end
    end.reverse
  end

  def checksum
    addends.inject :+
  end

  def valid?
    checksum % 10 == 0
  end

end