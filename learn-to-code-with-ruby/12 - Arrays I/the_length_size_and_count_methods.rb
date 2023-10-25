# Lenght method - gives the quantity of elements inside an array
# It works in a similar way to the length method to count a string

puts "Double Whopper".length

puts [1, 2, 3, 4].length

puts ["Hi", "There", nil].length

puts [].length

puts

# Size method - is simply an alias for the length method

puts [1, 2, 3, 4].size
puts ["Hi", "There", nil].size
puts [].size

puts

# Count method
# If we invoke count without any arguyments, it's going to count the number of elements within the array (wich makes it equivalent to the lenght and size methods)

puts [1, 2, 3, 4].count
puts ["Hi", "There", nil].count
puts [].count

puts
# However, the advantage of count it we can give it an argument and that represents what we want to count within the array
# For exemple:

puts [1, 2, 3, 4, 5, 2].count(5)
# That´s asking Ruby to count how many times the integer 5 occurs within the array
puts  [1, 2, 3, 4, 5, 2].count(2)
