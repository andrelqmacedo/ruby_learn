class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end
end


# We're going to have acess to instance methods besides the ones that we manually define within our class body.
#

guitar = Guitar.new
puts guitar.class # this is an instance method that the Guitar class has acess through Inheritance (more to come)
puts guitar.to_s # it's responsability is to convert the object to a string representation
# => #<Guitar:0x00007f54927fa0b0> - This is Ruby's default string representation of our custom object. That's because
# Ruby doesn't know how to represent out Guitar object or any custom object as a String, so it simply has a fallback
# default string representation consisting of the details it does know.
#
# Otherwise, we're free, as developers, to customize what the String representation wil be for our own custom Class
#
# If we try to just 'puts' the object, the 'puts' method, behind the curtains, will just call the 'to_s' method on
# any given object, to find out what should be string representation that's going to outputl.

puts guitar

# If we define our own 'to_s' method within the body of our class, we're going to define our object's custom
# string representation, which is going to be whatt we see we've puts out thar object.

# To do so, we must OVERRIDE, OR Overwrite, the default string representation
# Inside the body of the method, we should declare a method, called "to_s" (as a override, we can't change or choose the signature of the method)
