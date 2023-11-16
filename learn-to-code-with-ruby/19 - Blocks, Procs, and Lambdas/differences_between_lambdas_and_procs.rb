# Lambdas vs. Procs
#   1) A lambda cares about the number of arguments it receives.
#      A lambda will throw an error if passed the wrong number of arguments.
#      A proc will ignore extra arguments and assign nil to missing arguments.
#
#   2) When a lambda returns, it passes control back to the calling method ()
#      When a proc returns, it triggers a return from the calling method (similar behavior to a block)


# The lambda would be a more specialized and more stricter proc.

my_proc = Proc.new { |name, age|puts "Your name is #{name} and you're #{age} yers old" }

my_lambda = lambda { |name, age|puts "Your name is #{name} and you're #{age} yers old" }

def do_stuff(&code)
  code.call("Andre", 25)
end

do_stuff(&my_proc)

do_stuff(&my_lambda)


puts

def do_more_stuff(&code)
  code.call("Andre")
end

do_more_stuff(&my_proc) # => 'Your name is Andre and you're  yers old'

# do_more_stuff(&my_lambda) # "..wrong number of arguments (given 1, expected 2) (ArgumentError)"


# Another difference is that when a lambda returns (when use the 'return' keyword in the associated procedural code),
# it will not going to impact the original method. The lambda will simply passa control back to the calling method and the
# method will contine its regular execution

# In comparison, if we use the 'return' keyword within a proc, that will also trigger a 'return' from the
# calling method (from the method that is using that proc). That's similar behavior of the 'yield' keyword and a
# block, as early examined

my_proc_2 = Proc.new {return "PROC RETURN" }
my_lambda_2 = lambda { return "LAMBDA RETURN"}

def execute(&logic)
  puts "Starting execution"
  puts logic.call
  puts "Ending execution"
end

# We can literaly inject in the middle of the method, i.e., we can keep the start and the end of a method, and at the same
# time, dynamically, injecting what goes on in the middle.
# It's some kind og 'plug and play' logic, where wqe can inject code to execute in the middle of a method. Otherwise the
# method is always going to be static.

execute(&my_lambda_2)

puts

execute(&my_proc_2)

# Unlike a lambda, a proc is not going to give back control. so, if we use the 'return' keyword, it's also going to return
# from the calling method. In the case above, from "execute". Because the parameter is a proc that happens to use the return keyword
# that return will also become the return of execute and thus the method will stop on line 49, so the output
# has the "Starting execution" string, but the proc in line 49 is the procedural logic that has the 'return' keyword,
# so we never actually reach line 50, and we never see the "ending execution" string
