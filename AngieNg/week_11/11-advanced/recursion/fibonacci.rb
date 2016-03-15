def fibonacci_iterative(n)
  a, b = 1, 1

  (n - 1).times do
    a, b = b, a + b
    n -= 1
  end
  a
end

def fibonacci_slow(n)
  # Find the nth Fibonacci value via recursion
  # Your code here

  if n <= 2
    1
  else
    fibonacci_slow(n-1) + fibonacci_slow(n-2)
  end
end

def fibonacci(n, a=1, b=1)  # Keeps track of the state in two additional variables
  if n <= 1
    a
  else
    fibonacci(n - 1, b, a + b)
  end
end

# puts fibonacci_iterative(1) # => 1
# puts fibonacci_iterative(2) # => 1
# puts fibonacci_iterative(3) # => 2
# puts fibonacci_iterative(4) # => 3
# puts fibonacci_iterative(5) # => 5
# puts fibonacci_iterative(6) # => 8

puts fibonacci(50)