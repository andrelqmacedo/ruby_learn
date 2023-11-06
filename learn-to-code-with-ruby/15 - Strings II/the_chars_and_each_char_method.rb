# Different approaches to iterate over the characters in a String
# The syntax with some of these methods are going to be very similar to the 'each' method syntax for iterating
# over the elements within an array

vehicle = "Spaceship"

p characters = vehicle.split("") #providing an empty string as argument
# Ruby will interprets this as "split the string eveywhere it can" or "split it by every single character"
puts
# Another approach is the built-in method 'chars'

p characters = vehicle.chars

puts

#To iterate over the characters of a string, we can use this method:
characters.each {|character| puts "#{character} is cool" }

puts
# But, as this operation is pretty common in Ruby, there's a built-in method available directly on a string
# that does not require the conversion of the string into an array first: the 'each_char' method
vehicle.each_char {|character| puts "#{character} is cool" }
