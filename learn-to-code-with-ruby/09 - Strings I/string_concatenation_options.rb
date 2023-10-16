# String Concatenation - to join, to add the characters from one string to another string
# Using symbols and methods

#With the plus symbol
first_name = "Harry"
last_name = "Potter"

puts first_name + last_name
puts last_name + first_name 

#first_name = first_name + last_name
#first_name += last_name 
puts first_name # The plus symbol just generate a new string

#Methods 
# THe method will mutate the original string

puts first_name.concat(last_name)
puts first_name # THe concat method change the source upon method was called, it will be modified from its original value to a new value

puts first_name.prepend(last_name) # This method concatenate the argument given to the beggining of the String; it will also mutate the value of the new String

puts first_name

# Shovel Operator <<
# We write our original string then the shovel operator and then the value we want to concatenate to the end of that string

wrestler = "Stone Cold "
# wrestler.concat("Steve Austin")
wrestler << "Steve Austin " << "WWF Champion "
puts wrestler
