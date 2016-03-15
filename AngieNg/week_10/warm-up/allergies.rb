require 'pry'

class Allergy
  ALLERGENS = {
    1 => "eggs",
    2 => "peanuts",
    4 => "shellfish",
    8 => "strawberries",
    16 => "tomatoes",
    32 => "chocolate",
    64 => "pollen",
    128 => "cats"
  }

  def initialize(score)
    @score = score
    list(@score)
  end

  def list(score)
    allergies = []
    ALLERGENS.each do |bitflag, allergent|
      puts (score & bitflag).to_s(2)
      if (score & bitflag) > 0
        allergies << allergent
      end
      allergies
    end
    puts allergies
  end

  def allergic_to? allergent
    list.include? allergent
  end

a = Allergy.new(34)
end