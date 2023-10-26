# How to extract a sequence of characters from a string or a sequence of elements from an array
# by using a range object

story = "Once upon a time in a land far, far away..."

puts story[3, 10]
#or
puts story[27..39]
puts story.slice(27..39)

puts
# If we use the exclusive range:
puts story[27...39]
puts story.slice(27...39)

# we can combine the range syntax with negative values as well
puts story[32..-9]
puts story[32...-9]

# We can use the range syntax when referencing a sequence of characters that we want to overwrite
story[12..15] = "season"
puts story

# The same rules will apply for an array of elements
numbers = [1, 3, 5, 7, 9, 15, 21, 8, 6]

p numbers[4..6]
p numbers.slice(4...6)
