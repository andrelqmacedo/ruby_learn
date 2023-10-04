# Complementary operator - Or operator - || (vertical pipes)

# The || operator validates that either one or the other conditions must be true
# If one of the conditions is true, the if statement will be true

entree = "Steak"
price = 19.99

if entree == "Steak" || price < 29.99
  puts "At least one of the conditions is true, purchasing meal"
else 
  puts "Both of these conditions evaluate to false"
end

#Sometimes is good to wrap the conditions in parentheses to better visualise the conditions

#Or put the conditions inside variables

# food_is_delicious = entree == "Steak"
# meal_is_affordable = price < 29.99


# if food_is_delicious || meal_is_affordable || third_condition
#   puts "Ordering the food"
# end