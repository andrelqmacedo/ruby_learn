# To renaming a file we are going to use a method on our File class, called 'rename'.
# This method will accept two arguments, the first one is the file to look for (the actual file name as exists),
# and the second argument is what to rename it to.

#  File.rename("my_first_file.txt", "something_better.txt")   # => It'll change the 'my_first_file.txt' name to
                                                              #  'something_better.txt'


# The second method we should be aware is 'delete'. It'll delete the actual file, and we should provide the
# name of the file as a string

#File.delete("something_better.txt")

# If we try to delete a file that does not exist we will face a little problem. By trying to do just that
# we'll run into a Ruby exception, 'cause Ruby says there's no such file or directory and it runs into an error,
# and the program chrashes.

# But there's a predicate method that we ca use as a helper, called 'exists?'
# It returns a boolean, so we typically add an if statement before it, and this predicate method accepts
# a file name.

File.open("something_better.txt", "w") do |file|
  file.puts "lore impsun"
end

if File.exist?("something_better.txt")
  File.delete("something_better.txt")
end
