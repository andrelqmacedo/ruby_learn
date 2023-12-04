# How to override a method in a subclass?

# 'Override' means to define a method with the same name in the subclass as a method that already exists in the superclass
# and the method in the subclass will win over, i.e, it'll take precedence/priority, so that when we invoke that method on
# the subclass object, the subclass implementation will win out.

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
  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    "My name is #{name} and I'm a manager"
  end

end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    "I'm working, I'm working!"
  end
end

sally = Manager.new("Sally", 42)
puts sally.yell
puts sally.introduce                # So the method that will run is the one declared at the subclass
