# Pop method - removes and returns one or more elements from the end of the array
# Another exemaple of a method that mutates/change an array

bubble_tea_flavors = [
  "Chocolate", "Kiwi", "Peach", "Plum", "Strawberry", "Taro"
]

p bubble_tea_flavors
puts

# By itself, without any arguments, the pop method is going to remove the very last element in the array and
# return it back, as a default data type
p bubble_tea_flavors.pop
p bubble_tea_flavors

puts

# If invoked with an argument, the pop method is going to return a new array, no matter how many
# values we ask to extract

p bubble_tea_flavors.pop(1)
p bubble_tea_flavors
puts
p bubble_tea_flavors.pop(2)
p bubble_tea_flavors
