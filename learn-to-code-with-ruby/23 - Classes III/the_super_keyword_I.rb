# 'super' keyword - invoke a method with the same name in the superclass

# 'super' is a keyword that we use in a subclass within a method definition to run the functionality belonging to the method
# with the same name in the superclass

# THe question to be answered is: "What if we want to run all the functionality of some method from the superclass and then
# add some other logic at the end of that?" > Augment the logic!

# To do this, we cannot use the override, because the override completely replace the original or higher level implementation.

# So, 'super' will invoke the method with the same name in the superclass

class Employee
  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

class Manager < Employee
  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    result = super                                   # In this example, 'super' is going to run the 'introduce' method from the Employee superclass
    result + " I'm also a manager."                   # And then we concatenate with something different.
  end
end

sally = Manager.new("Sally", 42, "Senior Vice President")
puts sally.yell
puts sally.introduce
puts sally.rank
puts sally.name
puts sally.age

# The ideia is that we have separated responsabilities and allow the subclass to define its exclusive behavior.
