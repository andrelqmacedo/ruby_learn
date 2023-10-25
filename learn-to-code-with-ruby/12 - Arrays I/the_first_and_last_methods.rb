# Helper methods on an array that allow us to extract elements from either the beginning or the end
# of the array

sushi = ["Salmon", "Tuna", "Shrimp", "Eel", "Yellowtail"]

p sushi.first

p sushi.first(4) # the argument N provides the number of the first N elements to pull out, that are going to be stored in a new brand array
p sushi.first(3)
p sushi.first(1)

# When we call the method without arguments, the element going to be pulled out as a String.
# Otherwise, if we used the same method with an argument, the elements are going to be pulled out into an array!
# As soon we provide an argument, the returned value will be an array of that number of elements

p sushi.last
p sushi.last(3)
p sushi.last(1)
