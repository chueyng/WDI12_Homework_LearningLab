def say_hello
  puts "Hello, World"
end
say_hello
say_hello()   # Equivalent to:


def say_hello(name)
  puts "Hello, #{name}"
end

say_hello('Angie')


def say_hello_to(name='Craigsy')
  puts "Hello, #{name}"
end

say_hello_to()

def add(a, b)
  a + b   # Implicit return
end

add(3,3)