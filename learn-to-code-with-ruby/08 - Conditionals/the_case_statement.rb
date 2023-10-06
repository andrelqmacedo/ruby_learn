# The case statement - a shortcut for when we have a bunch of if and elsifs that are connect to test the exact same value 
# for all the possible variations of that value

# if x == 5
# elsif x == 10
# elsif x == 15
#   #etc

def rate_my_food(food)
#   if food == "Steak"
#   elsif food == "Sushi"
#   elsif food == "Burritos"
#   end
  case food
  when "Steak"
    puts "Man, i love #{food}. Delicious, pass the steak sauce!"
  when "Sushi"
    puts "Awesome, my favorite food"
  when "Tacos", "Burritos", "Quesadillas"
    puts "Cool, i love mexican food"
  when "Yogurt"
    puts "I feel fit today."
  else
    puts "Ok, i can do #{food}"
  end
end



puts rate_my_food("Steak")
puts rate_my_food("Sushi")
puts rate_my_food("Tacos")
puts rate_my_food("Yogurt")
puts rate_my_food("Burritos")
puts rate_my_food("Quesadillas")
puts rate_my_food("Feijoada")