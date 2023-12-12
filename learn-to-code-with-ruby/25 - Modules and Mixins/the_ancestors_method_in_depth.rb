module Purchasable
  def purchase(item)
    "#{item} has been purchased."
  end
end

class Bookstore
  include Purchasable
end

class Supermarket
  include Purchasable
end

class Bodega < Supermarket
end


bookstore = Bookstore.new
supermarket = Supermarket.new
bodega = Bodega.new

puts bookstore.purchase("Animal Farm")
puts supermarket.purchase("Ice Cream")
puts bodega.purchase("Slim Jim")

p Bookstore.ancestors
p Purchasable.class
p Object.class
p Kernel.class
p BasicObject.class

puts

# The 'is_a?' method returns true if a given class lies anywhere in the inheritance hierarchy of that object.

p bookstore.is_a?(Bookstore)
p bookstore.is_a?(Object)
p bookstore.is_a?(BasicObject)

# But it will also return true if we provide an argument of a module that is mixed in to any of the classes
puts

p bookstore.is_a?(Purchasable)
p bookstore.is_a?(Kernel)
