text = "5"
puts text
puts text.class

puts text.to_i #Converts a string to a integer 
puts text.to_i.class

puts "15 apples".to_i.class #15 -  Only if the string begins with the numeric content ruby will proceed to convert
puts "apples 15".to_i.class # 0 - Otherwise it will return 0
puts "nonsense".to_i # 0

puts text.to_f # 5.0
puts text.to_f.class #Float

puts

number = 5
puts number.to_s # 5
p number.to_s # "5"
puts number.to_f # 5.0

puts

percentage = 0.9
puts percentage.class
puts percentage.to_s
puts percentage.to_s.class


