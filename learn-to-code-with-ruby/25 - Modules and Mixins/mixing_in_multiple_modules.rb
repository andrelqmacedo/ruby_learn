# How to mix in multiple modules into the same class?

module A
  def some_method
    "Hello from A"
  end
end

module B
  def some_method
    "hello from B"
  end
end

class SomeClass
  include A
  include B
end

some_object = SomeClass.new
puts some_object.some_method # => hello from B

# The method that is being invoked comes from the LAST module included/extended/prepended into a class
# The reason that the last one is going to win out is because Ruby is going to look top down at the order in which
# these modules have been mixed in and the last defined mixin will win out.

# We should keep in mind that if module A has ten other methods that have no conflicts with the methods in module B,
# those methods are going to work just fine.

# The order of declaration of the modules is only important for situations where method names across different modules
# may conflict. In these scenarios Ruby will prioritaze the order of the modules.
