# Inheritance allows a class to obtain or 'inherit' all the methods from another class. Inheritance helps to avoid
# duplicate code and structure real-world ideias.

# The class that inherits from another is called the 'subclass' or 'child class' (sub = class)

# The class from which the child inherits is the 'superclass' (super = above). Sometimes the superclass is called
# the 'parent class' or 'base class'

# Ruby onlu supports single inheritance. A class can only inherit from one class. However, a superclass can inherit
# from its own parent class.

################

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

ken = Employee.new("Ken", 35)

puts ken.class
puts ken.introduce
puts

# Subclass - we begin with a regular class definition. And what we typically do for a subclass is we define a specialized type.
# Think of a subclass as a subcategory or a subset of a larger parent category represented by the superclass.

# Define a subclass with the '<' symbol followed by the superclass.
# Think of the subclass as a specialized type of the superclass.

class Manager < Employee
end

class Worker < Employee
end

bob = Manager.new("Bob", 48)
puts bob.introduce
puts bob.class

puts

dan = Worker.new("Daniel", 30)
puts dan.introduce
puts dan.class
