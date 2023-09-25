#Some values, in a certain context, gonna be 'truthy'
#And thats good enough to Ruby runs the code in a if statement

if 5 
  puts "Will this print?"
end

# In this example, if 'integer' is not a boolean value
# But Ruby is not going to raise an exception
# It´s going to evaluate to truthy, because in a if statemente context,
# Ruby considers it to be essentially like a true.


#In Ruby, there´s only two falsy values, only two types of values that will
#Not execute an if statement if used with the 'if' keyword
# These values are "false" and "nil"

if false
  puts "This will not be printed!"
end

if nil 
  puts "This will not be printed also."
end

# All other values will be considered truthy for Ruby.

# Although, Ruby will raise a warning