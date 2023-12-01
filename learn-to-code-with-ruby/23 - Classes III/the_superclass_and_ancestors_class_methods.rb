# superclass class method - return the superclass that class inherits from
# ancestors class method - return an array of all superclasses (plus extra stuff)

p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
p 5.class.superclass.superclass.superclass.superclass

puts


# The extra information we see as we call the ancestors methods are the 'modules', which allow us to inject even more
# functionality into a class without defining a separete superclass.

p 5.class.ancestors
p 3.14.class.ancestors
p "hello".class.ancestors
p [].class.ancestors
