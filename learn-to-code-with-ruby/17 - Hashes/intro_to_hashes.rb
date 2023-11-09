# Intro to Hashes

# A hash is a data structure consisting of key-value pairs.
# A key is an identifier for a value. It's what we use to look up the specific value.
# A hash solves the problem of association (connecting two values together). It's it fundamental purpose.

# The hash is a collection of pairs!

#Example: Restaurant menu - connects a food item to a price
#Example: A dictionary connects a word to a definition

# Rules of a Hash
# Hash keys must be unique.
# Hash values can contain duplicates.
# Hash values are extracted by key, not by order.

# Basic syntax for declaring a hash in Ruby:

empty_hash = {}

puts empty_hash
puts empty_hash.class
puts

empty_array = []
p empty_array
puts empty_array.class

# The hash has many methods in common with other objects we alredy studied. Examples:

puts empty_hash.length
puts empty_hash.empty?
