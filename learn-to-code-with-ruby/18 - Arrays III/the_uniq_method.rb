# uniq method - return a new array without duplicates, i.e., a new array
# consisting of only unique values. 
# So this method will remove all duplicates from our starter array

numbers = [1, 8, 3, 2, 3, 8, 1, 8, 9]
p numbers.uniq 

# After the first occurence of any given value, if it occurs another time
# or a third time (or however many times after the first) Ruby is going to
# exclude ir from the new array that is returned.

# The first occurence is going to be keept at the exact same position
# in which ir occured, but we're not going to keep any subsequent occurence
# of any element that repeats more than once.

# NOTE: this method does not mutate the original array, i.e., 
# we will get back a brand new object
p numbers

# If we want to mutate the original array, we should use the
# complementary bang method (uniq!)

numbers.uniq!
p numbers