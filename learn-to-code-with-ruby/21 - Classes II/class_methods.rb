# Class method - a method invoked directly on the class rather than an instance
# Class methods can be called on a class even if instances don't exist.

# One example of a class method is the 'new' method, an automatic class method to create an instance from a class.
# Guitar.new

class Vehicle
  attr_reader :wheels, :passengers

  def initialize(wheels, passengers)
    @wheels = wheels
    @passengers = passengers
  end

  def self.car
    self.new(4, 6)
  end

  def self.truck
    self.new(18, 2)
  end

  #def Vehicle.hello
  def self.hello
  puts "I´m a class method"
  end

end

# To create a class method we need to prefix the method signature/name with a special terminology.
# The first option is to use as signature the class name, followed by a dot => 'Vehicle.hello' ; The full class name,
# then a dot, then the method name, indicates that these is a class method to be invoked on the Vehicle class

Vehicle.hello # => "I´m a class method"

# The second option, rather than writing the complete class name within the method name, we're instead
# going to use the keyworld 'self', which adds a more dynamic behavior for the class method, because what it refers
# to differs or varies depending on where it's used.

Vehicle.hello

# A very common reason to use a class method id to create a pre-configured version of an object. I.e., to instantiate
# a new object from the class, but with some pre-configured arguments, with things kind of configured out of the box.

car1 = Vehicle.car
p car1.wheels
p car1.passengers

truck1 = Vehicle.truck
p truck1.wheels
p truck1.passengers
