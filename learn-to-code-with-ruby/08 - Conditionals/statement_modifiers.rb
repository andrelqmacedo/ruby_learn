# Statement modifiers = it's a shortcut we can use in combination with constructs like 'if' and 'unless' to reduce the total code we write.

# The ONLY scenario in which this shortcut applies is whenever out if statement only has once line.

number = 10000
verified = true

# if number > 5000
#   puts "That's a huge number"
# end

puts "That's a huge number" if number > 5000 && verified
# We move the actual execution logic to the very beginning of the line, and then we add the if statement and the conditional to the end of the line
# There's no need to add the 'end' keyword if we use this kind of syntax

# It also works with the unless keyword

another_number = 8

# unless another_number > 10
#   puts "Another number is not greater than 10"
# end

puts "Another number is not greater than 10" unless another_number > 10