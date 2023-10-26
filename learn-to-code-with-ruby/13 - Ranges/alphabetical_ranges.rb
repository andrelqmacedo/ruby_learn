# Alphabetic range - includes all the alphabetics charaters frtom a starting letter to a final letter
# The same rules os inclusiveness and exclusiveness applies for alphabetic characters

alphabet = "a".."z"

p alphabet.class

p alphabet.first
p alphabet.last
puts

p alphabet.first(3)
p alphabet.last(5)
puts
# It's important to remenber that Ruby considers that uppercase and lowercase letters are from different
# categories. And it first stores all the uppercase letters, and then all the lowercase letters

alphabet = "A".."z" # A-Z, and then a-z
p alphabet.first(40)
