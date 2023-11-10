# Filtering a hash:

# select - build a new hash by keeping key-value pairs based on a condition
# reject - build a new hash by discarding key-value pairs based on a condition

# With these methods we're going to have acess to both the keys and the values, and we can choose which one we
# want to use for our filtering criteria.

# As a remainder, the select and the reject methods both take a block, and in the block you specify a boolean, to
# return or write some kind of condition that evaluates to true or false;

# With the 'select' method a true indicates to keep that element, and in the context of a hash, the said element
# is the complete key-value pair. So, for every block that returns true, we're telling Ruby to keep that key-value pair in the
# new hash that will be returned by the method.

# In comparison, the 'reject' method does the same thing, it build up a new hash, but if the block returns true, that tells Ruby
# to exclude/omit/discard that key-value pair from the the new hash that's generated.

recipe = {sugar: 3, flour: 10, salt: 1, pepper: 8}


# With hashes the block is going to receive two block variables, the first one the keys in each pair, and the second variable
# represents the value
p recipe.select { |ingredient, teaspoons| teaspoons >= 5 }

puts

p recipe.select { |ingredient, teaspoons| ingredient.length == 5 }
puts

p recipe.reject { |ingredient, teaspoons| teaspoons.even? }
p recipe.reject { |ingredient, teaspoons| ingredient.to_s.include?("s")}
