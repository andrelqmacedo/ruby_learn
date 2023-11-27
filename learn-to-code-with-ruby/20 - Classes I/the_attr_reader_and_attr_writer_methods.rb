# There's a shortcut in Ruby to define getters and setters for ours instance variables:
# This syntax will allow Ruby to automatically define reader/writer, getter/setter methods for our instances
# the exact same way we define them.

# This Ruby Shortcuts will follow the exact same conventions as we have: getter methods, which names will match
# the name of the instance variable, and setter methods, which name is going to be the name of the instance value
# followed by a equals sign (name-of-the-variable=)

# We need to provide symbols, with the 'attr_reader' method, one symbol for each instance variable that we want to have
# a reader method;

# The complementary method to 'attr_reader' is 'attr_writer', that's going to define a instance method that is going to be
# a writer, a setter, that's going to update the value in our instance variable.


class Guitar

  attr_reader :type, :wood, :strings, :price
  attr_writer :price

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @price = 1500
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end


  def wood=(new_wood)
    @wood = new_wood
  end

end

guitar = Guitar.new
p guitar.type
p guitar.wood
p guitar.strings
p guitar.price

guitar.price = 10_000
p guitar.price

# So, we declare 'attr_reader' e 'attr_writer', typically placing it at the top of our class, and we give it
# sequential symbol arguments, representing the instance variables that we want to define getters and setters methods for.
