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

# How to convert a string into a appropriate representative time object that stores the date-time information?
# This is going to be critical if a Ruby program is ingesting time based data stored in the format of a string

# In orderr to get access to the two class methods 'parse' and 'strptime' (string parse time), we're going to need
# to begin with a require:

require "time"
# As Ruby is a very flexible and dynamic language, we can spread out the definition of a construct like a class
# or a module across different files;
# What we're doing is when we require the 'time' . rb file, which is in the Ruby Standard Library, it's going to
# parse the expanded Time class definition and augment or enhance the existing Time class definition that it knows
# to include all of this additional functionality.

puts Time.parse("2023-01-01")
puts Time.parse("2023/01/01")
# The problem with the 'parse' method is that there's no customization, and it can interpret the date in a wrong way

# So, if we want to tell Rubyhat the format of our string is, we're going to need to use the complementary method
# 'strptime', or string parse time

puts Time.strptime("03-04-2023", "%m-%d-%Y")
