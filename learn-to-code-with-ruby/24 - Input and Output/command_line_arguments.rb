# How to provide and capture command line arguments within a Ruby program?

# A command line argument is a value that flow into our Ruby program from the command line, i.e, from the
# terminal, when we run our program.

# We can pass arguments at the command line before we run a program, before we press enter. The arguments/values
# will flow into the file e be available.

# In order to separate these values that are going to flow into the file, we simply use a space between
# each subsequent value
# EX: $ ruby command_line_arguments.rb 1 2 3

# In the exemple above we are passing 1, 2 and 3 as arguments

# But how to access these values?
# They're all going to be bundled up in a special array that's automatically going to be available in our program,
# and that array is going to be called "ARGV" (This is an example of a constant in Ruby, but it's a constant
# that's always available to the programmer in Ruby, so we dont have to declare it, but can not altere it)

puts ARGV.class # => Array

# As these constant is an array, we can iterate over it, using something like the 'each' method

ARGV.each { |argument| puts argument }

# This is typically used for to use out command line to specify some kind of option or configuration setting,
# because we have these values that can be combined with something like an 'if' statement to alter the execution
# of our program.

# These way, all of the logic doesn't need to be put in the file. We can specify some of it on the command line, when
# the actual Ryby file runs.

# Another point to know is that all of the arguments are goint to flow in as strings. That's because in these
# ecosystem, in the command line, Ruby does not yet exist, i.e, this construct doesn't understand the notion of a string
# yet or an array or a hash. The only thing it understands is text, so is going to assume that everything is coming in
# as a string and that's how it's going to pass it to Ruby.

ARGV.each { |argument| puts argument.class }

# So, if we're going to do some numeric operation with these values, we're going to need to convert them.

ARGV.each do |argument|
  square = argument.to_i ** 2
  puts "The square of #{argument} is #{square}"
end
