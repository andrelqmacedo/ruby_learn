# Use inheritance when the relationshio is an 'is-a' relationship
# Ex: "A Car is a type of Vehicle"

# Use modules/mixin when the relationship is a 'has-a' relationship
# Ex: "A Car is Towable, Purchasable, Crushable"

# OBS: we can mix in multiple modules but only inherit from 1 superclass


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
