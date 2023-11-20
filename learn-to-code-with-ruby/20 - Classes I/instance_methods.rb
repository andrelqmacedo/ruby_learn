# Encapsulation refers to a design paradigm where we restrict
# direct acess to an object's data. Instead, we use methods
# to acess and write that data, which hides away the complexity
# of the implementation and reduces the chance of bugs

# Example: Microwave

class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @string = 6
  end

  def information
    "An #{@type} #{@wood} guitar with #{@string} strings."
  end

end

guitar = Guitar.new
p guitar.information

# "information" is an instance method, it exists on the guitar instance. It does not exist at the top level of Ruby.
# "information" is not a method we invoke on the Guitar class itself, but at a instance of that class
