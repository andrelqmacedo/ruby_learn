# for 'element' in 'iterable data structure'

# The for loop exists so that we can iterate or traverse or progress through some data structure
# one element at a time


# The for loop can be combine with not only an array but other objects as well like ranges, for example.

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8]

for number in numbers
  p number
end

# THIS IS NOT THE PREFERRED WAY TO ITERATE IN RUBY
# The preferred method is the 'each' approach


# The last value of the internal 'for' variable is going to persist
# Otherwire, the each method is self-contained, it cleans itself up and doesnt leave anything behind

puts number

# The for loop can be used to iterate over other objects, such as a range.

for value in 1..10
  puts "Yay, we're iterating here!"
  puts "We are currently on #{value}"
end

puts value

# But the each method is also available on a range object
# And is the preferred, more ruby way, to iterate over a range

(1..10).each do |range_number|
  puts "Yay, we're iterating her too!"
  puts "We are currently on #{range_number}"
end
