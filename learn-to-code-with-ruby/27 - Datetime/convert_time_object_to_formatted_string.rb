# Reference

# %b - Abreviated month name("Jan")
# B% - Full month name("January")
# %d - Day of the month (1..31)
# %j - Day of the year (1..366); so-called "Julian date"
# %m - Month as a number (1..12)
# %w - Day of the week as a number (0..6)
# %x - Preferred representation for date (no time)
# %y - Two-digit year (No century)
# %Y - Four-digit year

# But how to convert a Time object to a string?

someday = Time.new(2025, 3, 31)

# The 'to_s' method is going to work in the Time object, but there's no space for customization or flexibility in the
# result that you get
puts someday.to_s

# There's a special method called "strftime" that stands for 'string format time'. This method is going to accept a
# string as argument, and that string is going to specify how Ruby is going to put together the time string
# that's going to generate.

# There's a whole special kind of language that we can utilize by combining a wide variety of symbols,
# as we can see above

puts someday.strftime("%d/%B/%Y")   # => 31/March/2025
puts someday.strftime("%Y")  # => 2025
puts someday.strftime("%d-%m-%Y")
