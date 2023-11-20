# Instance variables are variables that belong to an object.
# They are "data" that belongs to the object.
# They hold information on the object's current state.

# Instance variables beging with an @ symbol. Without the symbol,
# Ruby interprets a variable as a local variable.

# Ruby calls a special, private "initialize" method when an object is instantiated
# from a class. The initialize method offers a perfect place to create instance variable and assign them
# starting values.

# If we do not define an "initialize method", the object is initialized without state

# The instance variable values do not have to stay conmstant. We can alter the object's state later.

class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @colors = ["Black", "Gold"]
  end
end

guitar_1 = Guitar.new
guitar_2 = Guitar.new

p guitar_1
p guitar_2


# To summarize, within any class we can define a 'initialize' method (the method name is not up to us, because this
# is the method name the Ruby will look for). Ruby is going to run the initialize method each time we instantiate an object f
# from the class. It's in the 'initialize' method that we have the perfect oportunity to initialize the objetcs state
# (which are the characteristics or the attributes, the pieces of data that the object is going to store about itself)
# Those pieces of data and theis values can change over the course of the objetics existence.
# Whenever we declare a instance variable in the 'initialize' method, you have to prefix each one with the @ (at) symbol, because
# that's what tells Ruby to actually save that instance. Without the at sign, we're creating a regular local variable
# and that will only exists as long as the method is done running. With at (@) we're saving a piece of data to the newly created
# object and otherwise it's the exact same variable declaration syntax.
