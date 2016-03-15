require_relative './wordy'
require 'minitest/autorun'
require 'minitest/pride'

class CalculatorTest < MiniTest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add
    assert_equal 18, @calculator.ask('What is 5 plus 13?')
  end

  def test_minus
    # skip
    assert_equal 2, @calculator.ask('What is 7 minus 5?')
  end

  def test_multiply
    # skip
    assert_equal -24, @calculator.ask('What is -6 multiplied by 4?')
  end

  def test_divided
    # skip
    assert_equal -5, @calculator.ask('What is 25 divided by -5?')
  end
end