# count method - count the number of occurencers of character(s) in a string
# The search is case sensitive, as always

puts "Hello world".count("l")
puts "Hello world".count("L")

puts
# We can use this method to pass more than one character, but it's gonna count the total sum of the number of occurences
# of each of these individual characters. So, the order of these arguments is not going to matter
puts "Hello world".count("lo")
