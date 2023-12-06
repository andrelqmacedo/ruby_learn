# How to write text to a file?

# To write we use the same method 'open' as to read a file, but then we should pass two arguments, the first one been
# the name of the file and the second a string with the letter W ("w"), which is short for write.

# This string of a single character effects the protocol, the permissions, with which Ruby is going to run the 'open'
# method

# By default, whe we run the 'open' method, if we do not provide a second argument, Ruby is going to treat it as a
# "read-only" operation. In other words, is going to prohibit itself from writing or modifying any kind of file.
# That exists purely for security, in the sensr that you habe to be explicit that we intend to write, i.e, that we
# are gibing Ruby permission to write some kind of file.
#

File.open("my_first_file.txt", "w") do |file|
  file.puts "Different stuff, test 2"
  file.write "No line break here! "
  file.puts " Pretty cool!"
end

# By default, Ruby creates the file in the same directory as the program is located, but there's a syntactical way to place the
# created file two folders up or three down, for example.

# There´s something to be aware, that is: By default, this write option will completly replace the contents of the file.
# So, if the file doesn't exist, it's going to create it and write to it, no problem,
# But if the files does exist, Ruby is going to take all the stuff we gave them, and write it to the file and replace
# all of the content right here.

# So, the default operation is a complete replacement.

# But there's an alternative second argument that we can provide to alter the permissions that we're going to give
# to Ruby. Instead of using "w" as the second argument, we use "a" (short for "append" - add to the end). Rather
# than overwriting the content, the 'append' argument will add the new text lines to the end of the file;

File.open("my_first_file.txt", "a") do |file|
  file.puts "Append test"
  file.puts " Pretty cool! [2]"
end
