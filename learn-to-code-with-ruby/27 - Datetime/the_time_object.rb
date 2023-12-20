# The time object holds a date and a time;
# The Time class is avaliable automatically (no require needed)
# The DateTime class was the older version (deprecated) of this class.

puts Time.new   # We're going to get the current time

puts Time.now # It's going to return the exact same thing as the 'new' method

# Very much like the 'Date' object, if we call Time.new() and we give it arguments, these arguments wil allow us to s
# specify differents pieces of the date time.
puts Time.new(2023)
puts Time.new(2023, 7)
puts Time.new(2023, 9, 23)
puts Time.new(2023, 9, 23, 18)    # The fourth argument will be the hour
puts Time.new(2023, 9, 23, 18, 23)    # The fifth argument will be the minute
puts Time.new(2023, 9, 23, 18, 45, 24)    # The sixth argument will be the second

puts

some_time = Time.new(2023, 9, 23, 18, 45, 24)

# There'll be some helper methods available with this object:
puts some_time.year
puts some_time.month
puts some_time.day
puts some_time.hour
puts some_time.min
puts some_time.sec
puts

# There's also going to be some cool methods that we created by the Ruby development team that give us information
# about what this time or what this date represent

puts some_time.mday  #day of the month
puts some_time.yday  #day of the year
puts some_time.wday  #day of the week, starting the count with monday (as n. 1)
puts some_time.monday?
puts some_time.saturday?
