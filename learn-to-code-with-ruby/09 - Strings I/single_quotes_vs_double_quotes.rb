# String object - methos and operations

#String can be declared with single or double quotes, but their usage are different.

puts "Hello"
puts 'Hello'

#The single quotes will be interpret by Ruby a little more "literally" 
puts "hello\n\n\nworld"
puts 'hello\n\n\nworld'

#Example> trying to enter a directory in Windows
puts 'C:Documents\news' 
#puts "C:Documents\news" - using double quotes will make Ruby interpret the \n as a escape character

#Otherwise, String interpolation only works with double quotes
phrase = "Hello world"
puts "My phrase is #{phrase}"
puts 'My phrase is #{phrase}'