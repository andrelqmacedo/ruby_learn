# The 'superclass' and 'ancestors' methods will work just as fine in our custom classes.

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

puts Manager.superclass
puts Worker.superclass
puts Employee.superclass
puts
# We don't have to explicitly make "Employee" inherit from the "Object" class, using the syntax (Employee < Object), but that's
# because Ruby automatically does that behind the scenes.
# All of the custom classes that we define in Ruby will automatically, secretly, implicitly inherit from the Object superclass, which
# in return will inherit from the BasicObject class, sitting above it.

p Employee.ancestors
p Worker.ancestors
p Manager.ancestors
puts


# NOTE: We can actually use the '<' sign, the inheritance symbol, to check wether one class inherits from another at any point
# in its hierarchy. So this is a strategy we can use to check not only if that class is a direct subclass, but wether it is a
# subclass bellow any of its ancestors, ant of the superclasses that sit above it.

puts Manager < Employee # The question can be translated to "Does Manager inherits from Employee?" or "Is Manager a subclass from Employee?"
puts Worker < Employee
puts Employee < Worker # As Employee is the superclass above worker, the answer is 'false'

# Besides, this is a directly comparison of wether a class is inheriting from another class, but this relationship is going
# all the way up. For example, we can ask not only if a Manager inherits from a Employee class, which it directly does,
# but we can ask if a Manager inherits from the Object class

puts Manager < Object
puts Worker < BasicObject

# So the '<' sign will not just goint to check whether a class is a direct descendant or a direct subclass from another,
# but it's going to ask whether it inherits from the class on the right in any capacity. The class on the right can be
# one superclass above, or five superclasses above. The '<' is going to check for any superclass in that hierarchy, in that
# chain going up so you can find out whether any class inherits functionality at some point from another class.
#
