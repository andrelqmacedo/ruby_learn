# Shift and Unshift - two more mutation methods for an array

# shift method - removes and returns one or more elements form the beginning of the array (inverse
# of the pop method)

units = ["meter", "kilogram", "second", "ampere" ]

# the shift method without any arguments, will pull out and return the first element of the original array
# and also mutate that original array, my removing that first element
p units.shift
p units

puts
# if we use the shift method with an argument, we're going to get back a  return value of an array
p units.shift(2)
p units

puts
# the unshift method adds an element to the beginning of the array, i.e, the unshift method is the complement
# to the push method
p units.unshift("yard")
p units

#the unshifht method accepts any number of arguments
p units.unshift("inches", "miles")
