# lambdas - a nameless method.

# "lambdas are almost identical to procs"

# Like a proc, a lambda is an object; it has a 'call' method om it that you can use in order to run the lambda.
# Actually, both the lambda and the proc are made of the Proc class, from the same 'blueprint'.
# There are small differencees between them.

# We can pass lambdas to a method, and we prefix them with an ampersand (&), to utilize it in something, like a method
# that expects a block.

squares_proc = Proc.new {|number| number ** 2}

p [1, 2, 3].map(&squares_proc)

puts
# The lambda is going to be a reusable object that represents a procedure and it functions in the exact same way as
# a proc, in the sense the we use it when we don't want ot keep rewriting the same block over and over;

squares_lambda = lambda {|number| number ** 2}

p [1, 2 ,3].map(&squares_lambda)

# This shows that if I take the exact same code sample and the exact same syntax (of providing a ampersand) and the
# provide a lambda instead of a proc, we're going to get the exact same result.

# So, as the proc, if we want to use the same logic in a different array, it's possible to use the lambda, that represents
# a reusable procedure or sequence of steps to follow.

p [6, 7, 8, 9].map(&squares_lambda)

# Alternative syntax for declaring a lambda:

squares_lambda_alternative = ->(number) {number ** 2}
p [1, 2 ,3].map(&squares_lambda_alternative)
