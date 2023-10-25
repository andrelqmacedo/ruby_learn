# The empty method is equivalent to taking the array's length and comparing it to zero.

puts ["A", "B"].empty?
puts [].empty?
# puts [].length == 0

puts

# The nil predicate method will only return true if it´s invoked oin a nil object
puts [].nil?
puts nil.nil?
