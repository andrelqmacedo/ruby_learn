# rand method - generates a random floating point number between 0 and 1

puts rand

puts rand.round(2)
puts rand.round(4)
puts
puts rand.round(2)*30

# We can ask Ruby to generate a random integer
# The first option is to pass to the rand method a number as argument. Doing this the rand method is going to
# return a random number between 0 and the number passed as argument.
# It's important to notice that the number passed as the upper bound is not included in the range
# I.e., it's an exclusive (is going to be up to that number, but the number will not be included to that result)
puts
puts rand(10)
puts rand(100)

# Random number between 0 and 100?
puts rand(101)


# It's possible to generate a random number within range
# To do that, we must pass a range object as argument, that'll represent the range of values
# from wich the random one will be chosen

puts rand(50..60) #inclusive
puts rand(1...100) #exclusive
