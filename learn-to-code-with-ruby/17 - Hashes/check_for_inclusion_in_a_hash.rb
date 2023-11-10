# Check for inclusion on a hash
#
# The include? method checks among the hash's keys
# The key? and has_key? methods check among the hash's keys
# The value? and has_value? methods check among the hash's values

cars = {
  toyota: "Camry",
  chevrolet: "Aveo",
  ford: "F150",
  kia: "Soul"
}

# If we invoke the include? method on a hash, it's going to check amongst the keys. (default)
p cars.include?(:toyota)
puts

# The key is literal, in this particular case we have a symbol called :toyota,
# we dont have a string of toyota. So in this case, if we look for a string, we're going to get 'false', because symbols
# and strings are fundamentally different objects.
p cars.include?("toyota")
puts

# The same applies for lowercase/uppercase (Ruby is case sensitive)
p cars.include?(:Toyota)
puts

# In adition, with include? we're only going to search among the KEYS, not the values. So if we try to search for a object
# that's a value with 'include?', it'll return false.

# In this case, the return will be false, because "Camry" does exist within our hash, but only as value, not as a key
p cars.include?("Camry")
puts


# The key? and has_key? methods check among the hash's keys
 p cars.key?(:ford) #preferred
 p cars.has_key?(:kia)

 puts

 # The value? and has_value? methods check among the hash's values
 p cars.value?("F350")
 p cars.has_value?("Soul")
 puts


 # NOTE: These methods are not going to search in the complementary side of the hash. Which means: we may have a key that does
 # exist, but if you're searching for a value with these methods, it's not going to care. Such as:
 p cars.value?(:toyota)
