# "If it walks, talks and quacks like a duck, it's good enough to be a duck.""

# What that means is that we have to be less concerned about the concrete class that an object is made from,
# We shouldn't be so much concerned about what exactly an object is, what type it has, what class it's made from
# And be more focused what is it's functionality, what is its behavior, what is it capable of doing for us.

# THe way that an object express it's behavior ir through methods, which are the interaction points with the object,
# commands that we can give to an object.

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

class Candy
  attr_reader :calories, :price                             # For the purposes of equality, the logic that we defined before doesn't really
                                                            # care about flavor,but about the calories been equal and the prices being equal.
  def initialize(calories:, price:)
    @calories = calories
    @price = price
  end

end

cookies_and_cream = IceCream.new(flavor:"Cookies and Cream", calories: 300, price: 3.99)
sour_patch_kids = Candy.new(calories: 300, price: 3.99)
snickers = Candy.new(calories: 350, price: 2.99)


p cookies_and_cream == sour_patch_kids
p cookies_and_cream == snickers
