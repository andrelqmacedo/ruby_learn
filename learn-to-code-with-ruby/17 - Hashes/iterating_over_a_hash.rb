# Iteration is the process of looping over the pieces/components
# of an object
#
# METHODS:
# each        - Iterate over each key-value pair
# each_key    - Iterate over each key
# each_value  - Iterate over each value
# keys        - Return an array of hash's keys
# values      - Return array of hash's values

salaries = {
  director: 100000,
  producer: 200000,
  ceo: 300000,
}
puts

salaries.each { |position, salary| puts "The #{position} earns #{salary}" }

# We've shouldn't rely on a hash to have a deterministic iteration order.
# Wich means, if we need elements/objects ir order, we should be using the array data structure.
# Tip #1: Don't assume the reliability or consistent return of iteration when it comes to a hash. Hashes were created
# to connect two objects, not to keep an order of objects.

salaries.each_key {|position| puts "The next position on is #{position}"}
puts

salaries.each_value { |salary| puts "The next empolyee earns #{salary}" }
puts

# To get back an array consisting of all the keys or all the values, in other words, if we want to transform our hash
# into an array, or a collection of keys and values that it contains, that are helper methods:

p salaries.keys
p salaries.values
