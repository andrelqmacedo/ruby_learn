# getter method - instance method that reads/gets/retrieves the value of an instance variable

# Remember that the instance variables are private by default. They are encapsulated, or hidden away, within the object.
# Another object cannot get access to them, or overwrite them, or even read them.

# So, in the top level program, we would not have acess to the informations, individualized, about a object, only
# in an indirect form, through the 'to_s' method.

# So, the getter method has that name because it is a specialized form of instance method, whose only responsability is to
# get a value of an instance variable and expose it to the program.

class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

  def type
    @type
  end

  def wood
    @wood
  end

  def strings
    @strings
  end


end

guitar = Guitar.new
puts guitar.type
puts guitar.wood
puts guitar.strings
