# Exceptions in Ruby

# What is an exception? an exception is an error in our program. An error, technically, is a point in our code
# where Ruby cannot correctly evaluate the code that's been given.

# This can arise from a wide variety of circumtances. It can be something simple, like a syntactical mistake,
# or a logical mistake, where Ruby ends up in a mathematically impossible or logically impossible situation.

# Typically, whenever we run into these exceptions, we just see the output in our terminal. When the program runs,
# Ruby says "I can't evaluate this code. Here is the error" and exits the program at this point.

# But we can do is rescue that error. Which means, we can essentiually intercept the problem as it's happening
# and try to react to it. As we say "There's a possibility that some goes wrong, Ruby, and if it does, please react
# in this way". - (Try and catch logic?!)

# What it means is "Save our program by intercepting the erroe, if it occurs, and reacting to it"
# To accomplish this we'll need two keywords initally: 'begin' and 'rescue'

def sum(a, b)
  begin
    a + b
  rescue
    "Unknown"
  end

end

puts sum(3, 5)
puts sum(3, "5") # TypeError
puts sum(nil, nil) # NoMethodError - As we did not specificed the type of error that 'rescue' should react to, it'll react to all kinds of errors

# we should not wrap everything between the 'begin' and 'rescue', but put within the begin section indeed the code
# that has a potential to go wrong.
