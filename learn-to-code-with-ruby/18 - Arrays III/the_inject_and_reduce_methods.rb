# inject/reduce methods - derive a new value by combining all array elements
#
# the two methods are aliases
#
# The argument represents the starting point, the value we'll begin the calculation
# first block variable - the "aggregable" value, the value being calculated
# secondo block variable - the current array element
# block calculation - what to sent to the next loop as the "aggregate" value. So, the block represents 'what to send to the
# next iteration', to the next loop, i.e.. it's the acumulator value, the aggregate value that we're building up,.

# These methods iterate over an array and derive a single value by combining all the array elements, or perform some kind
# of operation across the array elements, to arrive at a new final aggregate value.
# Ex: We have an array of numbers, and we want to add all the numbers.

# The inject/reduce methods are differente from the map method:
# The 'map' method iterate over an array and performing a consistent operation on every element, but the goal is to
# return back a brand new arrat of the same length with all of those operations performed on all of those elements;
# With 'reduce/inject methods the final object that we choose to create is up to us, we can build up whatever we want.
# We start with a starting value, and with every loop, or iteration, we'll update that value, until we get to the final
# derived aggregated value.

p [10, 20, 30].reduce(0) {|sum, number|  sum + number}

# First iteration: elemement = 10, sum = 0 (starting value), sum + number = 10;
# Secoond Iteration: element = 10, sum = 10, number = 20, sum + number = 30;
# Last iteration - element = 30, sum = 30, sum /= number = [60]

p [10, 20, 30].inject(0) {|sum, number|  sum + number}

puts

color_counts = ["Red", "Blue", "Red"].reduce{} do |counts, color|
  if counts [color].nil?
    counts[colot] = 1
  else
    counts[color] + = 1
  end
  counts
end
