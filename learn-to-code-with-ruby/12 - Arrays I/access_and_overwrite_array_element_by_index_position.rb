# The array will maintain order and use the index positions as the index positions of a String
# it initializes with 0, and the index position of the last element is one less than the length of the structure
#

fruits = ["apple", "orange", "grape", "banana"]

puts fruits[0]
puts fruits [1]
puts fruits[3]

p fruits[100] #nil

puts fruits[-1] #banana
puts fruits[-2]

puts fruits.slice(0) #apple
puts fruits.slice(100) #nil
puts fruits.slice(-1) #banana

puts

puts fruits.[](0) # method square brakets = apple

puts

fruits[1] = "watermelon"
# To overwrite an element, we just need to acess the current index and then specify what you want to place in that position

puts fruits

fruits[4] = "raspberry"
# If the index position passed is past the end of the array, ruby will add it to the very end of the array

p fruits

puts

fruits[10] = "kiwi"
# Ruby will populate the array with nil if the index is way past the end of the array
p fruits
