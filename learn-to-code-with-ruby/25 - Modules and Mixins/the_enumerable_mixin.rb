# A mixin simply describes a module that has being used in a specific context, a specific scenario

# A mixin describes a module that we inject into a class to add additional behavior.
# It's a way to share functionality between classes without declaring a superclass/subclass hierarchy.

# We can have a module within several classes within it. With mixins, we can take that module and sort of place
# it into or inject it into a class, mix it into a class, so that every instance made from that class will have access
# to those methods that were defied within the module, the module that was mix in;

# Enumerable module - enables "iteration" for our object
# Enumerable - adjective - able to be counted by one-to-one

# The module automatically defines methods like 'map', 'select', 'reject', 'any?', and more

# 1) Mix in the Enumerable's module with the 'include' keyword
# 2) Define an 'each' method

puts Enumerable.class


class Refrigerator
  include Enumerable                                    # First we use the 'incluse' keyword to bring the module we want
                                                        # To mix it in.

  attr_reader :snacks, :drinks

  def initialize(snacks:, drinks:)
    @snacks = snacks
    @drinks = drinks
  end

  def items
    snacks + drinks
  end

  def each                                               # Second, we need to define a new custom 'each' method, to make available
     items.each {|item| yield item}                      # the helper methods from the Enumerable module
  end

end

fridge = Refrigerator.new(
  snacks: ["Doritos", "Jolly Ranchers", "Ben & Jerry's Ice Cream"],
  drinks: ["Pepsi", "Coke", "Gatorade"]
)

p fridge.items

# fridge.each {|item| puts "#{item} is delicious"}
p fridge.sort
p fridge.any? {|item| item.length > 10}
p fridge.all? {|item| item.length < 25}
p fridge.map {|item| item.upcase}
p fridge.select {|item| item.downcase.include?("j")}
p fridge.reject {|item| item.upcase.include?("B")}
