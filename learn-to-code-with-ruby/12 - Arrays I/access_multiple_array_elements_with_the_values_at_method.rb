# values_at method - can extract elements at positiions throughout an array
# This method accepts a sequence of integer arguments, as many as we'd like, and those arguments
# represent the index positions whose value you'd like to pull out throgh the array

tv_channels = ["Globo", "SBT", "Record", "Band", "MTV", "TV Senado"]

p tv_channels.values_at(0)
# We are always going to get back an array as the return value of values, no matter how many arguments we put

p tv_channels.values_at(0, 4)
p tv_channels.values_at(1, 3, 5)
p tv_channels.values_at(0, -1)

# The order passed in the arguments is going to be the order stored in the result array
p tv_channels.values_at(-1, 0)

# We can use duplicate values as well
p tv_channels.values_at(3, 3)

# Ruby will return nil for every index positions that does not exist in the array
p tv_channels.values_at(10)

p tv_channels.values_at(0, 1, 10, -19)
