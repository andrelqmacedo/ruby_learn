# join method - merge array elements into a string (optinionally using a delimeter)
# We'll start with an array of elements and then merge those array elements into a string
# It's kinda the opposite of split, and optionnaly insert a delimiter between every two elements

registrants = ["Jake", "Mike", "Hannah"]
puts registrants.join

# By default, if we invoke the 'join' method without an argument, Ruby is going to join all of the elements
# without anything in between them, in the order that they appear in the original array
puts registrants.join("-")

# It's important to notice that Ruby will only add the delimiter between EVERY TWO SUBSEQUENT ELEMENTS, i.e., it'll
# not add the delimiter after the last element because it's not between two elements.
puts registrants.join(", ")
