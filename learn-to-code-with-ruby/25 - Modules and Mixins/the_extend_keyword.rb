# 'extend' keyword - add the mixin's methods as class methods

# The 'include' and 'prepend' keywords mix in a module's at the
# instance level, so every object that is crated from the class with the mixin will have access to that module's methods.
# (as well as its constants)

# With 'extend' these methods are defined on the class level and not defined on the instance level.

module Announceable
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announceable
end

class Warehouse
  extend Announceable
end

puts Dog.who_am_i
puts Warehouse.who_am_i

# But, if we instanciate a new dog, for example, and try to call the 'who_am_i' method on the said instance,
# we're going to get an undefined method error, because 'who_am_i" does not exist as an instance method for a dog object
# it exits only as a class method for the Dog class.
