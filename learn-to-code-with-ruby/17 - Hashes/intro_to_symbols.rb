# Symbol - a lightweight, imutable Ruby object that is used as an identifier.
# Lightweight string

# Strings can be changed, so every time a string is used, Ruby has to store it in memory even if an existing
# string with the same value already exists.
# Symbols, on the other hand, are stored in memory only once, making them faster in certain situations.

# The symbol is imutable.

# One very common convention in Ruby is to use sybols as hash keys.

# Symbol's syntax:

puts :hello
puts "hello"

puts :hello.class
puts "hello".class

# The 'methods' method shows in an array all the methods available to the object invoking it.
# So using the lenght method after the methods method we may get the difference in the number of baked methods between
# a string and a hash
p "hello".methods.length
p :hello.methods.length

# Another thing to have in mind is that Ruby will never create copies of symbols throughout the program:
a = "hello"
b = "hello"
c = :hello
d = :hello

puts a.object_id
puts b.object_id
puts c.object_id
puts d.object_id

# As symbols are imutable, Ruby will not create a new symbol (like it does with strings). This is another example
# of how symbols help reduce memory and optimizes, by not having to create extra duplicates. So, in the example,
# 'c' and 'd' are just different names for the same symbol.
