# There's another way that we can declare class methods:
#  Inside the body of the class, we add another 'class' keyword, followed pra two less than signs - shovel operator ( << )
#  After the shovel operator we add an space and write the name of the class or the 'self' keyword
#  Because we're using the 'class' keyword, we need to close off tha 'class' with its own separate 'end' keyword

class Vehicle
  class << self
    def car
      new(4, 6)
    end

    def truck
      new(18, 2)
    end
  end

  attr_reader :wheels, :passengers

  def initialize(wheels, passengers)
    @wheels = wheels
    @passengers = passengers
  end

  #def Vehicle.hello
  def self.hello
  puts "I´m a class method"
  end

end


car1 = Vehicle.car
p car1.wheels
p car1.passengers

truck1 = Vehicle.truck
p truck1.wheels
p truck1.passengers

# The advantange of this approach is because this syntax tells Ruby that everything inside is going to be a class method
# we no longer need to prefix our class method names with the 'self' keyword. WE kind of isolate the class methods within
# this space, area;.
