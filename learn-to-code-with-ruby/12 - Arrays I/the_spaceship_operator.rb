# Spaceship operator <=>
# Returns -1, 0, 1 or nil


# Returns 0 if two values are equal
p 5 <=> 5
p [3, 4, 5] <=> [3, 4, 5]

# Returns -1 if the value on the left is smaller
p 5 <=> 10
p [1, 2, 4] <=> [1, 2, 10] # Ruby is going to compare each value within the respective array to the equivalent value in the other one


# Return 1 if the value on the left is greater
p 5 <=> 3
p [1, 2, 8] <=> [1, 2, 4]
p [1, 10 , 5] <=> [1, 5, 8] # Ruby is going to compare through the order of the elements, element by element


# Return nil if the values are incompatible, wich means there's no logical way to compare them with each other
p 5 <=> [1, 2, 5]
# There's no way to compare them, 'cause they are different data structures
# The comparison between a nil object with any other object will be determined by nil
p [nil, 1, 2] <=> [0, 1, 2]
