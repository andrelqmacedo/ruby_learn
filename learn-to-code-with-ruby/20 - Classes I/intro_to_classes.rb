# Classes - AS class is a blueprint/template for creating objects, Ruby's built-in classes includes
# Array, Hash and String.

# The goal of Object-Oriented Programming (OOP) is to model real-world concepts as objects, to represent all
# the daily things around us as a digital data structure. How we are going to model the real world around us depends
# of what we need our program to do;

# An object is a container for data (i.e state) with methods to process or manipulate that data;

# A class is the blueprint, the schematic, the outline for an eventual object

# A concrete object is called an instance of a class. The process of creating an object is called instantiation

# the 'class' method returns the class from which the object was made (the schematic that the object was created from)

puts 5.class
puts 8.class
puts 5.class == 8.class

puts 3.14.class
puts 99.99.class
puts 3.14.class == 99.99.class

puts 3.class == 3.14.class

puts

puts "Hello World".class
puts [1, 2, 3].class
puts ({}.class)
puts true.class
puts false.class
puts nil.class
puts(0..9).class
puts Proc.new {}.class
