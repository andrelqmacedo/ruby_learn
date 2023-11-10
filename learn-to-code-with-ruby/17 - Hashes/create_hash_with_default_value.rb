# Another way that we can create a hash in Ruby
# The advantage of this approach is that we can customize the value that the hash will provide when we
# try to reference a key that does not exist, i.e., we can customize the default value (the value provided when the key does not exist);

# Remember that, by default, when we reference a key that does not exist within a hash, Ruby will return nil

numbers = {}
p numbers[:pi]

# To customize that value we're going to use a differente syntax
# In Ruby, every object is created from a class (the blueprint, the schematic from wich the object is constructed)
# So, every hash that we make is made from a hash class, and we can actually reference that hash class directly in line.

# When we use the Hash class and invoke the new method, we can pass as argument for that method the default value to provide
# in the absence of a key.
numbers = Hash.new(0)
numbers[:pi] = 3.14
numbers[:pokemon] = 150

puts

p numbers[:pi]
p numbers[:pokemon]

# When we refence a key that does not exist, we're going to get zero, and not nil as default

p numbers[:planets]
