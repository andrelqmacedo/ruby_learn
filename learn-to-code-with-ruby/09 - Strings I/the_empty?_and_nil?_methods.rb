# Predicate methods for string objects

#empty? - simple checks if a string is empty, wich means it has no characters
puts "".empty?
puts "432340".empty?
puts "    ".empty?

# nil? - it returns true if it's called on the actual nil object
# THe nil? method is available in all objects in Ruby around
puts "hello".nil?
puts 5.nil?

something = nil
puts something.nil?