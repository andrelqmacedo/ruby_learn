# How to import one ruby file into another?

# 'load method' - It's simply going to load the file that we specify into the one we invoke the method.

# It's important to notice that top-level operations, like the 'puts' method, are going to run automatically,
# while constructs or names like some method or a class are not. That's becouse it's just a method that
# has not been invoked yet and a class that has not been instantiated yet.
#
# But, when we load these files, these constructs will become available to use whthin this file.

puts "Welcome to the program"

load "another_file.rb"      # By default, Ruby will look for the file specified within the current directory

# As load is a method, we can provide the arguments within parentheses, but, much like as the 'puts' method
# load is one of those methods that we typically ommit the parentheses. That's just a community convention, because
# most people intuitively understand that we're loading a file, and that the string represents the file to import.

some_method
table = Table.new
puts table.class

puts "We've reach the end of the program."

# We can technically use 'load' multiple times with the same file. Each time the 'load' method is used, is going to
# load the file over and over again.

load "another_file.rb"

# As said above, by default, Ruby will look for the file specified within the current directory, but we can
# also specify as a common syntax is a dot and a foward slash within the string:

load "./another_file.rb"   # These is just a visual indicator, common in places like the terminal and in general file
                           # system navigation. Some people prefer this approach because it's a lot more explicit in
                           # communicating that the file is in the exact same directory as the current file;. (But
                          # theres no reason, lines 28 and 32 are essentially the same)
