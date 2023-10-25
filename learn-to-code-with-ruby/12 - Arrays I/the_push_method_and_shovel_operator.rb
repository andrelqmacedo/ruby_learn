# Ways to add an element to the end of and array - push method and shovel operator
# Both these options are going to mutate, or change, the original array

# push method - add the element to the very end of the array
# It accepts any number of sequencial arguments
soups = ["French Onion", "Clam Chowder", "Chicken Noodle"]

soups.push("Miso")
p soups
puts
p soups.push("Wonton", "Hot and Sour", "Krakovian") # They'll be consecutively appendend to the end of that original array

puts


# The Shovel Operator
# Can be combined consecutivly to add multiple elements on the same line
locations = ["Airport", "Bar", "Saloon"]

locations << "House"
p locations
locations << "Rodeo" << "Theme Park"

p locations
