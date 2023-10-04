# The ternary operator
# ternary means 'composed of three parts' - consists os 3 segments
# A ternary operator is a syntactical shortcut for an if-else statement

if 1 < 2 
  puts "Yes, it is."
else  
  puts "No, it's not."
end

value =  1 < 2 ? "Yes, it is" : "No, it's not."
#conditional statement ? 'true-value' : 'false-value' 
puts value

puts "Yes".downcase == "yes" ? "The two are equal" : "The two are NOT equal"