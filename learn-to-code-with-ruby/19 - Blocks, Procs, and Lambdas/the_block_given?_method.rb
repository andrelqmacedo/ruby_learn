# block_given (predicate) method - determines wheter a block was provided to a method invocation;

# The boolean returnd value from this method actually reflects whether or not a block has been passed to the method.

# So this block_given? method is meant to be invoked inside one of our own methods that may, or may not, receive a block.
# By wrapping this block given in combination with an if statemente, we can actually create a more flexible design, which
# means we can allow a method to run with or without a block.

def pass_control_on_condition
  puts "Inside the method"
  if block_given?
    yield
  end
  puts "Back inside the method"
end

pass_control_on_condition { puts "Inside the block" }
puts
pass_control_on_condition
