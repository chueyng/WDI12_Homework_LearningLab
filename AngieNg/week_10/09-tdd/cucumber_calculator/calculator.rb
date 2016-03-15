class Calculator
  def initialize
    @inputs = []
  end

  def <<(n)
    @inputs << n
  end

  def add
    @inputs.inject :+
  end

  def substract
    @inputs.inject :-
  end

  def multiply
    @inputs.inject :*
  end

  def division
    @inputs.inject :/
  end
end

