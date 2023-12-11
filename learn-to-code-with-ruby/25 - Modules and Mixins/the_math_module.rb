# Ruby makes some modules available to us automatically.
# It's important to notice that some of these modules are automatically available to use within any Ruby file,
# and others need to be imported;

# The "Math" module is automatically available.

# A module is itself an object:

puts Math.class

# Modules will also have the 'methods' method, that display an array with all the methods within the said module.
#p Math.methods.sort

puts Math.sqrt(4)
puts Math.sqrt(9)

puts Math.sin(90)

# There's a wide variaty of methods for all kinds of mathematical operations.

# It's important to notice that a module can contain more than just methods;
# It can contains also 'constants', as the number Pi
# To access a constant within a module, we need a slightly different syntax:

puts Math::PI

# THe double colon syntax is for extracting the value of a constant rather than a method.
# Another thing, all letters are capitalized, because that's Ruby's convention for constants.
