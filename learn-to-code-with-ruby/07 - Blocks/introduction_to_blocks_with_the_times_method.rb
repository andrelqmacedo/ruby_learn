#Argument - object, a concrete value (like a number or a string)

#Blocks - A chunk of code that is associated with a method invocation.  
# A collection of Ruby statements that immediately follow a method call;
# A block cannot exist unless it´s directly attached to a method.
# The block, diferently from a argument, is a procedure. A series of instruction;



5.times { puts "Ruby is fun, right?" } # For a block thats one line of code the convention is to use curly braces {}

3.times do                             # For a block that´s going to occupied more than one line the convention is to use "do....end"
  puts "I´m having fun learning it"
  puts "I find it awesome."
end

# Obs: The return value of the #times method is the integer value that´s passed
# The exemples will return 5 and 3, respectively

value = 7.times do
  "Go Goofers"
end

puts value # => 7

