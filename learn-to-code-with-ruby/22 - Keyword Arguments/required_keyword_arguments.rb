# Keyword arguments - a new feature in Ruby 2.0 that is conceptually similar to passing a hash, but with better
# error handling.

# Keyword arguments allow the invocation of a method to specify which parameters the arguments correspond to.

# In order to change a parameter to be a 'keyword parameter', what we do is after the parameter name we put a colon (:)
# This tells Ruby to, whenever we are invoking the method, we now must provide the actual keyword parameters. We must provide
# these names of 'a:' and 'b:' during invocation. At any point we invoke sum, the have to EXPLICITLY write out
# 'a:' and tells Ruby what it's equal to and explicitily write out 'b:' and tell Ruby what is equal to.
# Ex:

def sum(a:, b:)
  a + b
end

p sum(a: 2, b: 3)

# The advantage of this approach over the hash approach is: We still get all the advantages of the hash approach (like,
# the order does not matter), and Ruby will warn us in all types of errors (in the case we forget a parameter, or
# in the case of a typo).

p sum(b: 3, a: 2)
