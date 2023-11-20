# Define a Cake class. It will have 3 instance methods.
#    - A bake method that returns the string "Baking the cake"
#    - A slice method that returns the string "Slicing the cake"
#    - A sell method that return the string "Sold the cake"


class Cake

  # def initialize
  #   @price = 10
  #   @flavor = "Chocolate"
  #   @size = 2
  # end

  def bake
    "Baking the cake"
  end

  def slice
    "Slicing the cake"
  end

  def sell
    "Sold the cake"
  end

end

cake_1 = Cake.new

p cake_1.bake
p cake_1.slice
p cake_1.sell
