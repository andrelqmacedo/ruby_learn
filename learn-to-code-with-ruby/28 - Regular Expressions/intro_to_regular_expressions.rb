# Regular expression - a search pattern for text

phrase = "The Ruby Programming Language is amazing!"

p phrase.include?("Pro")
p phrase.start_with?("The")
p phrase.end_with?("zing")
p phrase.end_with?("zing!")

####

puts

# How to create a regular expression? Two foward slashes (//) in a row

# We're going to put our search pattern eventually within these two slashes, i.e, the exact combination what we want
# to search for or the pattern that we want to search for is always going to go in between these two slashes

p //.class  #this is a regular expression that searches for nothing

# A regular expression can do a very basic search pattern, such as searching for the presence of one or more
# characters in a row

p phrase =~ /T/
# The equal sign and the tilde (~) is an interesting operator, that accepts a string on one side and a
# regular expression on the other, and it'll search with the string has that pattern of the reg. expres.,
# and if it does it's going to give you the index position where that character occurs.
p phrase =~ /P/
p /R/ =~ phrase
p /x/ =~ phrase
p phrase =~ /!/
p phrase =~ /by/
p phrase =~ /ang/
p phrase =~ /ing!/
