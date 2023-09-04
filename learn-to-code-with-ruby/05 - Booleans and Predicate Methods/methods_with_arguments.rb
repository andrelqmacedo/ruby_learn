# An argument is a input that we can provide to a method when its invoked

puts "Big Mac".include? "B"
puts "Big Mac".include? "b"
#puts "Big Mac".includes?  ArgumentError> given 0, expected 1
#puts "Big Mac".includes? "A", "B" - too many arguments

#In Ruby the parentheses for the arguments are optional
#The best practice says that if a method takes no arguments, the
#method should be written without parentheses, but methods that
#take 1 or more arguments, we should use the parentheses

puts "Andre".include?("A")