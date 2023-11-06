# delete method - remove character(s) from a string
# It's going to remove all of the occurances

p "cottage cheese".delete("c")

p "cottage cheese".delete("e")

puts
# It's possible to provide any number of characters within this string in any order
# The order doesn't matter, because the characters will represent all of the characters to delete,
# not a sequence of characters

p "cottage cheese".delete("ce")
p "cottage cheese".delete("ec")
