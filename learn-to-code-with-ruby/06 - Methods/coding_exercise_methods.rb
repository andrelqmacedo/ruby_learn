#Define a easy_money method that accepts no parameters
# and always return the value 100.

def easy_money
  return 100
end 

#Define a best_food_ever method that accepts
# no parameters and always returns the string "Sushi"

def best_food_ever
  return "Sushi"
end

#Define a convert_to_currency method that accepts a single parameter (an integer),
# the method should convert the argument to a string, prefix it with a dollar sign,
# and return the result.

#Examples:
# The => indicates the expected return value:
 # convert_to_currency(15) => "$15"
  # convert_to_currency(8) => "$8"

def convert_to_currency(value)
  converted = value.to_s
  puts "$#{converted}"
end

convert_to_currency(15)
convert_to_currency(8)