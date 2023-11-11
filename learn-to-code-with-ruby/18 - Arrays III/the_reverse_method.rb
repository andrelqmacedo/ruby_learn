# reverse method - returns a new array with elements in reverse order

p [1, 2, 3,].reverse

p [true, true, false, false].reverse

# This method does not mutate the original array
# But if we want to do just that, there's a bang reverse method (reverse!) equivalent

queue = [4, 8 , 15, 16, 23, 42]
p queue.reverse # Does not mutate the object
p queue
p queue.reverse! # It'll mutate the object! 
p queue