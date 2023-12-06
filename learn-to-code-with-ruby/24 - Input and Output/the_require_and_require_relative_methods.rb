# Two more methods to import a Ruby file into another


puts "Welcome to the program"

require "another_file.rb"

some_method
table = Table.new
puts table.class

require "./another_file.rb"
require "./another_file"

puts "We've reach the end of the program."

# Although the semantic value of the words 'import' and 'require' very similar, they work is pretty different:
# The first thing we need to kow about 'require' is that it's only going to ever load the file ONCE.
# When we use 'load' Ruby essentially executed or ran that specified file as many times as we wrote the 'load'
# method with require, and that's typically what we will want within a modern Ruby codebase (concept of
# caching - "if you're already done the work, there's no reason to do that work again").

# 'require' is cool, because it's actually going to be across our entire codebase, not just within the single file,
# so as soon as a file requires another, Ruby is going too register all of the contents in that required

# So, 'require' basically minimmizes the total amount of readint that Ruby needs to do across all our sides,
# wich of courseacceleraates the speed at which our program runs.

# 1) Unlike 'load', 'require' will no stop by looking in your current directory
# 2) 'require' is also used to import filmes from the actual core Ruby programming language. Ruby has additional
# functionality that is not loaded from the very beginnin of a program starting.
# 3) With 'require' we do not need the '.rb' extension, becausr ruby is going to default looking for a file with
# '.rb' extension so we can actually get rid of all
#
require "another_file.rb"

                                            ###############


#require_relative' spares us the need to type './', because 'require_relative' look to load a Ruby file from
#the current directory as default.
