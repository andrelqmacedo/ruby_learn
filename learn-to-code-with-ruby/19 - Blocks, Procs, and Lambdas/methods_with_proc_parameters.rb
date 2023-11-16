# How can we define a method that accepts a proc parameter?

# A proc is an object, and for any object that we're going to be passing into a method invocation, we declare a parameter,
# a name for the expected input. As the proc actually exists as a valid Ruby object with method, we have to define a place
# in line in the parameter list for the proc.

# The approach we'll utilize is pretty similar to yielding to a block.

# Keep in mind that when a method expects a proc, Ruby will enable the method to receive a block, and vice-versa.

def talk_about(name,&my_proc)
  puts "Let me tell you about #{name}"
  my_proc.call(name)
end

def talk_about_2(name)
  puts "Let me tell you about #{name}"
  yield(name)
end

# The two approaches are similar, 'because theu both will cede control to either a proc or a block and give it a piece
# of data, which is the 'name' argument that we pass in at the time of invocation;

good_thing = Proc.new {|name| puts "#{name} is a jolly good fella"}

bad_thing = proc {|name| puts "#{name} is as dolt."}

p talk_about("Andre", &good_thing)
p talk_about("Brock", &bad_thing)
p talk_about("Johnny") {|name| puts "#{name} is irrelevant."}

# When Ruby sees a block, it takes that block and convert it to a proc. The reason Ruby does that is to allow the method
# to be flexible, it can either accept a 'name' String and a proc, or a 'name' String and a block, and it converts the block
# equivalently to be a proc argument.

# Ruby does this automatic conversion of a block to a proc is to enable the code to be flexible.

puts

p talk_about_2("Felipe") {|name| puts "#{name} is someone special"}
p talk_about_2("Bob", &good_thing)
