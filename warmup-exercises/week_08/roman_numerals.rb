require 'pry'

class RomanNumerals
  def initialize( num )
    to_roman( num )
  end

  def to_roman( num )
    result = ''
    roman_mappings.each do |arabic, roman|
      while num >= arabic
        result << roman
        puts "Greater"
        num -= arabic
      end
      puts "Arabic: #{ arabic }. Roman: #{ roman }. Number: #{ num }"
    end
    puts "Result: #{result}"
  end

  def roman_mappings
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
  end
end

roman = RomanNumerals.new 448