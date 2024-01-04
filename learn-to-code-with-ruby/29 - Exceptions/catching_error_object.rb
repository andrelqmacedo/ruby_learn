
# There's a additional syntax that we can apply that look like this:

def sum(a, b)
  begin
    a + b
  rescue => e  # Assign a name that is going to be given to the error object that Ruby is going to generate.
    puts "CLASS NAME: #{e.class}"
    puts "MESSAGE: #{e.message}"
  end
end

# Remember that everything in an object in Ruby, and that includes error objects.
# So, before Ruby is going to terminate the program, it's going to package up all the information that it knows
# about the error into a error object. The error object, just like any other object, is going to come from a class
# and is going to have instance methods. With the rocket operator (=>) we can specify the variable name that we want
# to give to that object, so whatever name we assign here is going to refer to that error, as within the section from the
# 'rescue' keyword.


puts sum(3, 5)
puts sum(3, "5")
puts sum(nil, nil)

# One of the issues with 'rescue' is that is a 'catch all', it captures every possible thing that can go wrong
# and maybe that's what we want, but more often than not, we'll typically want to be able to react to every single
# type of error we may encounter.

# The first reason we may want to do this s simply because the action that we want to take to correct an error may differ
# or vary depending of what kind of error we encounter. Different errors may prompt different resolutions but with
# rescue used by itself we're always going to get everything caught in one single section

# So we can become a little more specific with our 'rescue' and tell it what specific error we want to rescue,
# and we can actually combine multiple 'rescue's, one after another, to react differently to each type of error.

def sub(a, b)
  begin
    a - b
  rescue  TypeError => e  # Assign a name that is going to be given to the error object that Ruby is going to generate.
    puts "CLASS NAME: #{e.class}"
    puts "MESSAGE: #{e.message}"
  rescue NoMethodError => error
    puts "We're gonna do something different to resolve a NoMethodError"
    puts "CLASS NAME: #{e.class}"
    puts "MESSAGE: #{error.message}"
  end
end

puts sub(3, 5)
puts sub(3, "5")
puts sub(nil, nil)
