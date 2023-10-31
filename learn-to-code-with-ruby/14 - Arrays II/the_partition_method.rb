# partition method - split an array into two arrays based on matching/npt matching a condition

foods = ["Steak," "Vegeatables", "Steak Burguer", "Kale", "Tofu", "Tuna Steaks"]

# good: food that includes the word 'Steak'
# bad: food that does not include the word 'Steak'

# good_foods = foods.select {|food| food.includes?("Steak")}
# bad_foods = foods.reject {|food| food.includes?("Steak")}

# The partition method expects a boolean value to be returned by the block,
# the difference is that if it returns true, Ruby is going to store that element in the first array
# and if it returns false, that element is going to be stored in the second array

p foods.partition { |food| food.include?("Steak") }

puts
# It returns an array of two arrays, the first or the outer array is the one with the elements that returned true to
# the condition, and the second or inner array is the one with the elements that returned false

# We can write two variables, and Ruby will assign each element of the array into one of the variable
good_foods, bad_foods = foods.partition { |food| food.include?("Steak") }
p good_foods
p bad_foods
