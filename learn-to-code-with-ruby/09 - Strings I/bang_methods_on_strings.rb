# Bang methods in strings
# Refer to a special category of methods or family of methods that are all related in a sense.
# bang methods are always going to end with a exclamation point - convention

# bang methods perform some kind of mutation, and then saves the new object
# we make a change permanent on the original object that we are working with; rather than returning a new thing, we modify the existing thing

word = "spaghetti"
# word = word.capitalize

puts word.capitalize!
p word

word.upcase!
puts word

word.downcase!
puts word

word.reverse!
puts word

word.swapcase!
p word