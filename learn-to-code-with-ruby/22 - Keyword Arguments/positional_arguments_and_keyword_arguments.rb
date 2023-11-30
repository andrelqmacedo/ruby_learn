# How to combine regular positional arguments with keyword arguments?

# The typical way is to put the positional arguments first, followed by our keyword arguments, and we can mix and match
# the two.

#

def sum(a, b: 1)
  a + b
end

# THe code above 'says' that whenever we invoke 'sum', we have to provide a sequential argument, that's going to represent
# 'a', because it is first in line. And then we also have to provide a named keyword argument for 'b:'. So if we want
# to provide a value for 'b:' we still have to provide it's name during invocation, because it is a keyword argument.

p sum(3, b: 5)
