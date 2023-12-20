# The 'Date' class and the 'date' object are used to represent a date in history, a concrete day.
# In order to use the 'Date' class we use the 'require' keyword to import the file 'date' which is available
# within the Ruby Standard Library.

require "date"

# The order of the arguments are: year, month and day. And these arguments are optional
puts Date.new(1989)
puts Date.new(1989, 7)
puts Date.new(1989, 7, 25)

birthday = Date.new(1989, 7, 25)
puts birthday.class

p birthday.methods

puts
puts birthday.year
puts birthday.month
puts birthday.day

puts

# There are a series of predicate methods that are helpful to determine the days of the week:
puts birthday.monday?
puts birthday.tuesday?

#
