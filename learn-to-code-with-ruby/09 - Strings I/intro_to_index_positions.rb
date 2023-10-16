# Index positions 

# The index position is the position of the character in line of that given string
# The count starts at 0, rather then 1, like: 0, 1, 2, 3, 4, ...

story = "Once upon a time"

# O -> 0
# n -> 1
# c -> 2
# e -> 3

# string.size - 1 -> final index position

# We use the index position the extract a character from a string

puts story[0]
puts story[1]
puts story[2]
p story[4]

p story[100]

# we can also extract from the back of the string
puts story[-1]
puts story[-2]
puts story[-3]
puts story[-10]
p story[-100]

# Slice method: pulling a character out of the string for future reference
puts story.slice(0)
puts story.slice(3)
puts story.slice(-1)