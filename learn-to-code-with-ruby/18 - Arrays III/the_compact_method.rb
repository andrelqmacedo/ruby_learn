# compact method - removes all nil values from an array
# All other values, including 'false', will be kept

p [1, 2, nil, 3.1, false, nil].compact

# We're going to get a new array, that strips all the nil values

# It doesn't matter how many times they occur, this method will remove
# all of the completely from the array.

# This method has no impact in an array that doens't have nil values
p [1, 2, 4].compact

# There's also a bang method equivalent (compact!) that will mutate the original array

sports = ["Football", "Basketball", nil, "Baseball", nil]
sports.compact!
p sports