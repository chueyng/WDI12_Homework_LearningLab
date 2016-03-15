require_relative './word_problem'
require 'minitest/autorun'
require 'minitest/pride'

class WordProblemTest < MiniTest::Test
  def test_add_1
    skip
    assert_equal 2, WordProblem.new('What is 1 plus 1?').answer
  end

  def test_add_2
    skip
    assert_equal 3, WordProblem.new('What is 1 plus 2?').answer
  end

  def test_add_more_digits
    skip
    assert_equal 45801, WordProblem.new('What is 123 plus 45678?').answer
  end

  def test_add_negative_numbers
    skip
    assert_equal -11, WordProblem.new('What is -1 plus -10?').answer
  end

  def test_subtract
    skip
    assert_equal 16, WordProblem.new('What is 4 minus -12?').answer
  end

  def test_add_twice
    skip
    question = 'What is 1 plus 1 plus 1?'
    assert_equal 3, WordProblem.new(question).answer
  end

  def test_add_then_subtract
    skip
    question = 'What is 1 plus 5 minus 2?'
    assert_equal 4, WordProblem.new(question).answer
  end

  def test_subtract_twice
    skip
    question = 'What is 20 minus 4 minus 13?'
    assert_equal 3, WordProblem.new(question).answer
  end

  def test_subtract_then_add
    skip
    question = 'What is 17 minus 6 plus 3?'
    assert_equal 14, WordProblem.new(question).answer
  end

  def test_multiply
    skip
    assert_equal 16, WordProblem.new("What is 4 multiply 4?").answer
  end

  def test_multiply_twice
    skip
    question = 'What is 3 multiply 2 multiply 4?'
    assert_equal 24, WordProblem.new(question).answer
  end

  def test_multiply_then_add
    skip
    question = 'What is 2 multiply 8 plus 3?'
    assert_equal 19, WordProblem.new(question).answer
  end

  def test_division
    # skip
    assert_equal 5, WordProblem.new("What is 20 divide 4?").answer
  end

  def test_division_twice
    # skip
    question = 'What is 48 divide 6 divide 2?'
    assert_equal 4, WordProblem.new(question).answer
  end

  def test_division_then_add
    # skip
    question = 'What is 10 divide 2 plus 3?'
    assert_equal 8, WordProblem.new(question).answer
  end


  def test_too_advanced
    skip
    assert_raises ArgumentError do
      WordProblem.new('What is 53 cubed?').answer
    end
  end
end