# Array equality - Two arrays are going to be considered equal if they have the same length and they have
# the exact same elements in the same order.

candy = ["Skittles", "Starburts", "Snickers"]
vegetables = ["Radishes", "Onions"]
desserts = ["Skittles", "Starburts", "Snickers"]
sweets = ["Skittles", "Starburts", "snickers"]


# Arrays are equal if they both consist of the exactly same number of elements string, in the exact
# same order, and all of the elements are exactly the same.

puts candy == desserts # 3 strings, in the same order, with the same caseness

puts candy == vegetables # Different number of elements

puts candy == sweets # Different caseness


# Inequality

puts candy != desserts     # false, cause they are equal
puts candy != vegetables   # return true, 'cayse they are NOT equal
