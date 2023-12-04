# One of the advantages of subclasses is that each one can define exclusive functionality;
# Exclusive instance methods and exclusive instance variables.

# A subclass still shoulb be thought of as a specialized type of the superclass, it should be able to do everything that the superclass
# can do, but perhaps a bit more, or perhaps a variation of what the superclass can do.


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
puts sally.introduce

chuck = Worker.new("Chuck", 54)
puts chuck.clock_in("8:30AM")
puts chuck.introduce

# As we can see, the subclass becomes like a variation or a variant, or even a customized type of the superclass above it.

# Another thing we can do is define the exact same instance method across multiple subclasses, but have each one
# operate differently (Ex: yell method for worker class)

puts chuck.yell
