# index/find_index methods - return the index position of the first occurence of element
# These two methods are aliases

# They locate the index position of a given element, the first occurance of that element that we're looking for

colors =["Red", "Blue", "Green", "Red"]

p colors.index("Green")
p colors.find_index("Red")
p colors.index("Orange") # => nil
