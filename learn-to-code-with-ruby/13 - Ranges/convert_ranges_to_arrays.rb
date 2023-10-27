# How to convert a range to an array
# It's going to be a method called to_a, where 'a' is short for array

letters_range = "A".."T"
p letters_range.class
puts
letters_array = letters_range.to_a
p letters_array
p letters_array.class

puts

numbers_range = 415...450
p numbers_range.to_a
