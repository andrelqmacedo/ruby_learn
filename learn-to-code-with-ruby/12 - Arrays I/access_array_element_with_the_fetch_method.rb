# alternative method to extract an elemento from an array
#

airports = ["JFK", "LAX", "Heathrow"]

puts airports.fetch(2)
puts airports.fetch(-2)

# If we use the fetch method with and index that does not exist, this method will raise and exception
# puts airports.fetch(100)
# 'index 100 outside of array bounds'
#
# THe fetch method can be helpful for is providing a default value of fallback value for the situation
# when the index position does not exist. We can do this by passing a second argument, thar represents
# the value to provide or substitute in the scenario the index does not exist

puts airports.fetch(100, "Some Airport")
