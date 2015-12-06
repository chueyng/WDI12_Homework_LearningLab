# Building Ruby Familiarity

# In this exercise you will take a first look at some common commands in Ruby
# The idea here is to build familiary with Ruby syntax
# This will likely be the first time you've seen some of these commands
# Just type them in and see the displayed output

# Steps:
#   1. Open up a new terminal window
#   2. Launch irb
#   3. Paste a line of code into irb
#   4. Press return
#   5. Write down the displayed output
#   6. Repeat steps 3-5 for all lines below in order


first_ans = 7 / 2

puts first_ans
#Answer: 3

print first_ans
#Answer: 3

first_ans = 7 / 2.to_f
#Answer: 3.5

first_ans = 7.to_f / 2
#Answer: 3.5

first_ans = 7 / 2.0
#Answer: 3

first_ans = 7.0 / 2
#Answer: 3

first_ans = first_ans.round * 4
#Answer: 16


def get_character(full_string, index)
  full_string[index]
end
# if full_String = "Angie", index = 4, answer is 'e'

message_string = "oicdlcwhejkeenoemrstuo"


character_1 = get_character(message_string, 4)
#Answer: l

character_2 = get_character(message_string, 7)
#Answer: h

character_3 = get_character(message_string, 2)
#Answer: c


message_array = [character_1, character_2]
#Answer: ["l","h"]

message_array.push(character_2)
#Answer: ["l", "h", "h"]

message_array.pop()
#Answer: pop "h", message_array = ["l", "h"]

message_array.push(character_3)
#Answer: message_array = ["l", "h", "c"]


message_array
#Answer: message_array = ["l", "h", "c"]

puts message_array
#Answer: l
#        h
#        c

print message_array
#Answer: ["l", "h", "c"]


value_float_1 = Math.sin(Math::PI / 2)
#Answer: 1.0

value_float_2 = Math.cos(Math::PI)
#Answer: -1.0

value_float_3 = (value_float_1 + value_float_2)
#Answer: 0.0

value_integer_1 = (value_float_1 + value_float_2).to_i
#Answer: 0


value_float_1 = value_float_1 * 4
#Answer: 4.0

value_float_2 *= 5
#Answer: -5.0

value_float_2 = value_float_2.abs
#Answer: 5.0

value_integer_1 += 8
#Answer: 16

value_float_4 = value_integer_1 * 3
#Answer: 0.0

value_float_3 -= 1
#Answer: -1.0


number_array = [value_float_1, value_float_2, value_float_3, value_float_4]
#Answer: number_array = ["4.0", "5.0", "-1.0", "0.0"]

number_array.push(first_ans)

number_array.unshift(value_integer_1)

number_array.push(value_integer_1)

number_array.unshift( Math.sqrt(36) )

number_array.delete_at(5)



number_array.push( [19, 21, 6, 3, 1] )

number_array.flatten!


number_array.each { |current_index| puts get_character(message_string, current_index) }

