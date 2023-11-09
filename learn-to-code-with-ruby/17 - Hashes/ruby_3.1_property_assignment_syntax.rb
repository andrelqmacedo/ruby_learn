# Another shortcut available as we define a key-value pairs in a hash, it was added in Ruby 3.1
# and it only works in certain scenarios:

# When you have a name in your program, such as a variable name, that also matches the key that you want to add
# in the hash. In this scenario, you can utilize this shortcut

# Example: We want to module a color in our program, and we have 3 variables, red, green and blue:
red = 230
green = 0
blue = 50

color_hash = { red: red, green: green, blue: blue }
p color_hash

# This scenario works because we have a key that matches the name of a variable in our program;
# And it's also the name of a existing variable that exists
# So, for every single key, for it's value, we're providing a variable with the exact same name


# So, the alternative syntax in this scenario
color = {red:, green:, blue:}

# This syntax is telling Ruby "Create a 'red' key, and for it's value look for a name in the program, such as a variable
# with the name of that key, look for a 'red' variable"

p color

# The hash is exactly the same, so it's possible to acess a value with the key correspondent:
p color[:red]


# The name (as in 'red' variable) must exist in the program, otherwise Ruby will raise an exception.
