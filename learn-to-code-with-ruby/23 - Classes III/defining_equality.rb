# How to define equality for our own objects? How to define the logic that Ruby is going to use to determine if two objects made
# from a custom class are in fact equal.

# Override the == instance method to define the object equality

class IceCream
  attr_reader :flavor, :calories, :price

  def initialize(flavor:, calories:, price:)
    @flavor = flavor
    @calories = calories
    @price = price
  end

  def ==(other)
    self.calories == other.calories && self.price == other.price
  end
end

cookies_and_cream = IceCream.new(flavor:"Cookies and Cream", calories: 300, price: 3.99)
rum_raisin = IceCream.new(flavor: "Rum Raisin", calories:300, price: 3.99)
mint = IceCream.new(flavor: "Mint", calories: 200, price: 1.99)

# By default, Ruby will assume that all IceCream objects are unequall to one another. The only scenario it will consider an object
# equal to another is if it's literally the same object.

p cookies_and_cream == rum_raisin
p cookies_and_cream == mint
p mint == mint

# However, what we can do is define the rules of equality, define the protocol that ruby is going to utilize to establish equality
# And what we do is to override the double equals (==) or the equality instance method within our class definition, i.e., we creat
# a new method within our class => 'def ==' - this is the method that the equality operator actually uses behind the scenes.
