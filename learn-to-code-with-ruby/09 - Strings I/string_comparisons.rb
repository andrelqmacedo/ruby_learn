#Comparing strings

a = "Hello"
b = "hello"
c = "Hello"

puts a == b #Case Sensitiveness
puts a == c # Same String (same characters, same sequence of letters, same lenght, same casing)

puts a != b
puts a != c

# < - compares two strings of two characters together based in their order in the alphabet
puts 3 < 5
puts "A" < "B" # "Does 'A' come befeore 'B' in the alphabet? True

puts "L" > "F" # "Does the letter 'L' come later in the alphabet compared to F? True
puts "L" > "M" #False

#Ruby will sort all characters in the alphabet in the uppercase first, and then afterwards its going to store the lowercase characters 
# in sequence as well
# A, B, C, D, E, F, ...
# a, b, c, d, e, f, ...

puts "Z" < "a"
puts "a" < "z"
puts "a" < "Z"
#All the capital letters come before all the lowercase letters
