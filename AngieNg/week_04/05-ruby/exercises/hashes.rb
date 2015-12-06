require "pry"

# https://gist.github.com/wofockham/50a52e9399075709fe87
# Array and Hash access
# A. Given the following data structure:

binding.pry
a = ["Anil", "Erik", "Jonathan"]
# How would you return the string "Erik"?
p a[1]
p a.fetch 1

# How would you add your name to the array?
p a.push("Angie")
p a << 'Angie'

# B. Given the following data structure:

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# How would you return the string "One"?
p h[1]

# How would you return the string "Two"?
p h[:two]

# How would you return the number 2?
p h["two"]

# How would you add {3 => "Three"} to the hash?
h[3] = "Three"
p h

# How would you add {:four => 4} to the hash?
h[:four] = 4
p h

# C. Given the following data structure:
is = {true => "It's true!", false => "It's false"}

# What is the return value of is[2 + 2 == 4]?
is[2 + 2 == 4]
is[true]

# What is the return value of is["Erik" == "Jonathan"]?
is["Erik" == "Jonathan"]
is[false]

# What is the return value of is[9 > 10]?
is[9 > 10]
is[false]

# What is the return value of is[0]?

# What is the return value of is["Erik"]?


# D. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
p users['Jonathan'][:twitter]

# How would you add the number 7 to Erik's favorite numbers?
p users['Erik'][:favorite_numbers] << 7

# How would you add yourself to the users hash?
users['Craigsy'] = {:twitter => 'craigsy', :favorite_numbers => '[5]'}

# How would you return the array of Erik's favorite numbers?
p users['Erik'][:favorite_numbers]

# How would you return the smallest of Erik's favorite numbers?
p users['Erik'][:favorite_numbers].min

# How would you return an array of Anil's favorite numbers that are also even?
users['Anil'][:favorite_numbers].each do |n|
  evens << n if (n % 2 == 0)  
end
p evens.uniq

p users['Anil'][:favorite_numbers].select {|n| n.even?}

# How would you return an array of the favorite numbers common to all users?
p users['Jonathan'][:favorite_numbers] & users['Anil'][:favorite_numbers] & users['Erik'][:favorite_numbers] & users['Craigsy'][:favorite_numbers]

# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
numbers = []
users.each {|name, info| numbers << info[:favorite_numbers]};
numbers.flatten.uniq.sort
