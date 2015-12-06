def prompt(message)
  print message
  gets.chomp
end

def menu
  puts "(a) - addition"
  puts "(s) - substraction"
  puts "(d) - division"
  puts "(m) - multiplication"
  puts "(p) - power of"
  puts "(sq) - square root"
  puts "(q) - quit"
  prompt ("Enter your choice: ").downcase
end

def add
 # puts prompt('First number: ').to_f + prompt('Second number: ').to_f
  a = prompt('First number: ').to_f
  b = prompt('Second number: ').to_f

  result = a + b
  
  puts result
  
  result # Implicit return of the result in case you wanted to use it elsewhere.

end  

def subs
  a = prompt('First number: ').to_f
  b = prompt('Second number: ').to_f

  result = a - b
  
  puts result
  
  result 
end

def div
  a = prompt('First number: ').to_f
  b = prompt('Second number: ').to_f

  result = a / b
  
  puts result
  
  result 
end

def mul
  a = prompt('First number: ').to_f
  b = prompt('Second number: ').to_f

  result = a * b
  
  puts result
  
  result 
end

def pow
  a = prompt('First number: ').to_f
  b = prompt('Number to power of:: ').to_f

  result = a + b
  
  puts result
  
  result 
end

def sqrt
  a = prompt('Number to square root: ').to_f

  result = Math.sqrt(a)
  
  puts result
  
  result   
end

choice = menu()

until choice == 'q'
  puts "Doing some calculation"
  case choice
    when 'a'
      add()
    when 's'
      subs()
    when 'd'
      div()
    when 'm'
      mul()
    when 'sq'
      sqrt()
    when 'p'
      pow()
    else
      puts "Invalid selection"
    end  

    choice = menu()
end

puts "Thank you for using the calculator"
