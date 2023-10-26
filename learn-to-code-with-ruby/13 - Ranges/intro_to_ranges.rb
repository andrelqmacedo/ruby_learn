# Range - is an object that represents a sequence of numbers or letters in order
# It's sometime called a sequence, because it represents a span of values, a collection of sequential values
# that encompasses everything from a starting value to an ending value.

# The use of two dots (..) is inclusive, because it'll include the final value of the range, on the right
# called "closed range"
inclusive_nums = 1..5

# The use of three dots (...) is exclusive, i.e., it'll not include the last value.
# called "open range"
exclusive_nums = 1...5


puts inclusive_nums.class
puts exclusive_nums.class

puts inclusive_nums.first
puts exclusive_nums.first

puts inclusive_nums.last
puts exclusive_nums.last # That´s kinda complicated

puts

# If we invoke this methods with an argument, ruby will return an array will all of those elements
p inclusive_nums.first(3)
p exclusive_nums.first(3)

puts
# The difference between this two ranges are proved here:
p inclusive_nums.last(3)
p exclusive_nums.last(3)

# It's useful to remember that he first and last methods will always return an array, if invoked with an argument
puts


# Wrapping the range in parenthesis is better for readability
p (2...10).last
p (5..30).last(2)
