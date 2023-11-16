# Procs - an object representation of a block

# So, what are the differences between blocks, procs and lambdas?

# blocks, procs and lambdas are three different ways of representing chunks of code that can be passed around
# and executed at a later time in combination with a method.

# Blocks are not objects, which means we can't save them for future use. We provide a block directly to a method, as needed,
# and then that block is completely gone. It's perfect for a simple operation that perhaps need to be written once.

# Otherwise, if we're going to have some repeated logic that is going to need to run multiple times and that logic is
# captured in the block, the problem is that will be necessary to write that logic over and over again, 'cause the block disappears
# immediately after the method is done running.

# So, the proc is the first way that we can solve this problem, and the proc is effectively an object representation of a
# block. 'Proc' is short for 'procedure', i.e., a sequence of steps.

# The proc is a Ruby object, so we can assign it to a variable.

# Syntax:

to_cubes = Proc.new { |number| number ** 3}

to_squares = proc { |number| number ** 2}

# How is this different from a block? The difference is we've assigned this proc (almost reusable block, this object
# representation of a block) to a variable. And now we're going to be able to reuse that variable to represent this logic over
# and over again, because now it's captured in a object

# Note 1: We pass a block to describe the logic of what's going to happen, what steps are going to run when we utilize the
# Proc. It's possible to utilize the 'do/end' syntax as well in both cases above.

# How to use procs? How can this be advantegeous?

a = [1, 2, 3, 4, 5]
b = [6, 7 ,8, 9, 10]
c = [ 11, 12, 13, 14, 15]

# We have 3 different arrays and what to apply the exact same logic within this 3 arrays. We can use the map method and pass
# this logic through a block. But the problem is that we need to write the same logic 3 times, one for each array, rewriting
# the logic of the block over and over:
p a.map {|number| number ** 3}
p b.map {|number| number ** 3}
p c.map {|number| number ** 3}

# In this example, the logic is simple, but if it captures some kind of difficult business logic or important business logic,
# that we don't want to duplicate over and over again, because that reduces the chance of error, and introduce duplication.
puts
# So, the proc is interesting because we have this object that represents a block like procedure, and we've captured the
# exact logic that we want to run in one location, which secures re-usability.

p a.map(&to_cubes)
p b.map(&to_cubes)
p c.map(&to_cubes)

puts

p a.map(&to_squares)
p b.map(&to_squares)
p c.map(&to_squares)

# This is how we utilize a proc. We call the method that will be provided with the proc, passing the proc as argument, and using
# an ampersand before the proc's signature.
