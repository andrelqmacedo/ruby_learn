# There's a instance method available in every object in Ruby, called 'methods'. It returns an array consisting of all
# the objects available's methods, and they're going to be represented as symbols. This method should be called
# on an actual object itself.

integer_methods = 5.methods.sort

float_methods =  3.14.methods.sort


p float_methods & integer_methods

puts

p float_methods - integer_methods

puts

p integer_methods - float_methods
