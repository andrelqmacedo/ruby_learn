# How can we define a method that accepts its own block?

# Use of the special key world 'yield'

# yield - directly inside the method at he point where we want to transfer control to the block that's going to be
# attached to the method when it is invoked.

def pass_control
  puts "I'm at the start of the pass_control method"
  yield
  puts "Now I'm back inside the pass_control method"
end

pass_control {puts "Now I'm inside the block"}

# yield tells Ruby that, at that point og the method execution, ruby should transfer control to attached block;
# The method will effectively pause or stop its own execution until the block completes running. And then the method
# resumes its execution.
puts

# If we use the 'yield' keyword, run the method, but do not pass a block, we're going to get an exception in Ruby!

# Keep in mind that we can totally customize the passed block:

pass_control {puts "Ruby is fun." }

puts
# Besides, the other block syntax (with the 'do/end' keywords) is totally valid:

pass_control do
  array_test = [1, 2, 3]
  array_test.each {|value| puts value  }
end

# We can use 'yield' several times
