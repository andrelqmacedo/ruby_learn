# Class variable - data that lives on a class rather than an instance;

# Typically, we use class variables for data that is kind of higher lever or more important than any specific instance.

# Classic use: counter (ex: the number of instance we create)

# When we're declaring an instance variable within a method like initialize we use a single at (@) sign
# When declaring a class variable we use two at (@@) signs

class Bicycle
  @@count = 0

  def self.count
    @@count
  end

  def initialize
    @@count += 1
  end

end

p Bicycle.count
Bicycle.new
p Bicycle.count
