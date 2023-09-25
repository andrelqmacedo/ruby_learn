color = "Green"

if color == "Red"
  puts "Red is rad"
elsif  color == "Yellow"
  puts "Yay for yellow"
elsif color == "Green"
  puts "Green is great"
end

number = 10

if number < 25
  puts "That's a small number"
elsif number < 50
  puts "That's a medium-sizes number"
elsif number < 75
  puts "That's a big number"
end

# Although 10 is less than 25, 50 and 75, only the first statement that
# Ruby evaluates to a truthy value is going to run.