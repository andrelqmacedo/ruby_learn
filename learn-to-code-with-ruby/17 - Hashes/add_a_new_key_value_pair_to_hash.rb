menu = { burguer: 3.99, taco: 1.99, chips: 1.99 }
p menu
p menu.length
puts

# How to add a new key-value pair to an existing hash:
# (The syntax is similar toi adding a value at a given index position within an array)

menu[:filet_mignon] = 29.99
p menu
p menu.length

# If we reference a key that already exists, this syntax will overwrite it with the new value that you
# specify on the right hand side.
# So, this is not only the syntax to adding a new key-value pair, but it's also the syntax for replacing
# the value for a given key

menu[:taco] = 2.99 # it's going to overwrite the existing value of the key ':taco'
p menu

# There's a method that accomplishes the same result, the 'store' method

menu.store(:salmon, 49.99) #It accepts two arguments, the first one is the key and the second is the value

# NOTE: With this method, and since we're NOT within the hash declarition syntax, we can't use the colon at the end.
# That's only for a direct association from a key to a value, when we initialize a hash.
# So it's necessaire to use the regular symbol syntax, with the colon : in front.

p menu
