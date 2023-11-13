# How to merge arrays and exclude duplicates? How to create a union of multiples arrays?

# | symbol - create a union of array elements (remove any duplicates) - vertical pipe = union symbol

p [1, 2, 3, 3, 3, 4] | [3, 4, 5, 6]

# the method returns a brand new array, an that new array is going to have all of the elements that are found in both of
# the arrays.
# All duplicates have also been removed.

p [1, 2, 3, 3, 3, 4].|( [3, 4, 5, 6])

# We can combine multiples array's with this syntax:
p [1, 3, 2] | [3, 4, 5] | [4, 5, 6]
