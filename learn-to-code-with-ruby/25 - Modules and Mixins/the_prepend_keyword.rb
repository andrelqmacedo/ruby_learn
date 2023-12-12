# prepend - verb - to add something to the beginning of something else

# 'prepend' keyword - add the mixin's methods before the instance method in the lookup order; So, now, unlike 'include'
# the mixins methods will take priority or precedence over the instance methods defined within the class definition; What it
# does is it switcher up the order in which Ruby is going to look for a method when it is invoked on an object.

# It's another keyword that we can use to mix in a module's methods into a class definition
# It's very similar to the 'include' keyword, but it works slightly differently;

module Purchasable
  def purchase(item)
    "#{item} has been purchased."
  end
end

class Bookstore
  prepend Purchasable
  def purchase(item)
    "You bought a copy of #{item} at the bookstore"
  end
end

bookstore = Bookstore.new
p bookstore.purchase("Goosebumps")

# So 'prepend' means that the modules/mixins methods are going to come before
# the instance methods defined in the body of the class definition in the look up order.

p Bookstore.ancestors # We should notice that Purchasable comes before Bookstore in the ancestors order, so Ruby look
                      # for the method in the module before looking into the class definition
