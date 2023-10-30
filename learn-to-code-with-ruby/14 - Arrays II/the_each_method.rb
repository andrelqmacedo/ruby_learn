# Iteration - proceed or traverse through the array one element at a time
# Block - chunk of executable code that we attached to a mehtod invocation

3.times { | number | puts "I´m currently iterating on loop n. #{number}" }

4.times do | number |
  square = number * number
  puts "The current number is #{number} and it's square is #{square}"
end
puts

names = ["bo", "moe", "joe"]

names.each { | name | puts name.upcase }
puts

[1, 2, 3, 4, 5].each do | current_number |
  calculation = current_number * current_number
  puts "The squase of #{current_number} is #{calculation}"
end
