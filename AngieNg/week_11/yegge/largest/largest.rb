# inputs = [1, 4, 25, 7, -12]
# puts inputs.max

# def largest(a)
#   largest = 0
#   a.each do |n|
#     largest = n if n > largest
#   end
#   largest
# end

# p largest(inputs)

inputs = [1,4, 25, 7, -23]

def largest(a)
  largest = -Float::INFINITY
  a.each do |n|
    largest = n if n > largest
  end
  largest
end


p largest(inputs)

