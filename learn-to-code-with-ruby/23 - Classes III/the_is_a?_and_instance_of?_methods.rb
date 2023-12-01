# instance_of? method - returns true if the object is made from the class argument
# is_a? method - return true if an object inherits at all from the class argument

class Employee
  attr_reader :name
  attr_accessor :age


  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end
end

class Manager < Employee
end

class Worker < Employee
end

# This two methods can be utilized to determine if an object is made from a class and whether an object inherits from a class
# in some point in it's hierarchy.

# The difference between this two methods and the 'superclass' or 'ancestors' methods is that these two methods are instance methods,
# which means they are called on an object made from a class, rather than the class itself.

bob = Manager.new("Bob", 48)


p bob.instance_of?(Manager)        # It's important to note that this is only going to return 'true' if is the exact class from which
p bob.instance_of?(Employee)       # the object is instantiated from. Any superclasses that the object has indirectly inherited from are
                                   # not going to return 'true'.

puts

p bob.is_a?(Manager)               # In comparison, the 'is_a?' predicate method returns true if an object inherits at all from the class
p bob.is_a?(Employee)              # argument. So whether it is directly made from that class or if the class that you pass as an argument
                                   # exists somewhere in that object's inheritance hierarchy 'is_a?' will return true.
