# There's a top-level class in Ruby called "File", and that's the class that we use in order to import any kind of
# file into Ruby.

# On this 'File' class there is an 'open' class method and what it expects is a string with the file name that
# we want to bring in

my_novel = File.open("novel.txt") # This will return a File object, that we passed to a variable called 'my_novel'

puts my_novel.class

my_novel.each {|line| puts line}
