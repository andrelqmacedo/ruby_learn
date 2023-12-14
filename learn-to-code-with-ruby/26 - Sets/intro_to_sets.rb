# A Set is an unordered data structure that guarantees thr uniqueness of its values
# Sets solves the problem of duplication

# Ruby 3.2 autoloads Set class when code uses it
# In earlier versions we need to require the "set" file

# Arrays solve the problem of keeping things in order, hashes solve the problem of associate objects together and sets
# solves the problem of duplication (cpf, for example?) - Sometimes we need a guarantee of uniqueness

# As we create a set, we pass the values as an array

p Set.new(["Fall", "Winter", "Spring", "Summer"])

# If we inject duplicates, we'll not have any kind of error, but the set that's printed is the same

seasons = Set.new(["Fall", "Winter", "Spring", "Summer", "Winter", "Fall"])

# When the set see duplicates values, they discard them

# We need to be alert with case sensitiveness and strings with distinct content. Uniqueness follows the exact same rules
# of equality as it does in any situation in Ruby

# OBS > In the instantiation we can provide the initial starting values that the set is going to contain, but we can also
# mutate the set overtime, so we can try to add new values.

# Commons methods:

p seasons.length
p seasons.include?("Winter")
p seasons.include?("winter")

puts

# Remember that set, very much like hash, is an unordered data structure. Which means we should assume that while we can
# iterate over all of its elements, we should NOT assume that the order is going to be deterministic or the same each time
# It very often can be, simply because of the mechanics of how Ruby works, but we shouldn't assume it to be.

p seasons.each {|season| p season}
