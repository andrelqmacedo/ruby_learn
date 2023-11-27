# Setter method - instance method that writes/sets/updates the value of an instance variable

class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @price = 1500
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

  def type
    @type
  end

  def wood
    @wood
  end

  def strings
    @strings
  end

  def price
    @price
  end

  def price=(new_price) # This is a comunity convention => 'name-of-the-variable'=
    @price = new_price
  end

  def wood=(new_wood)
    @wood = new_wood
  end

end

guitar = Guitar.new
p guitar.price
guitar.price=(5000)
p guitar.price

# A setter is just a regular instance method that's going to change the value of the instance variable.

# If we use the syntax for the community convention (setter method: "name-of-the-variable"=() ), Ruby offers a shortcut
# Rather than invoking 'price=', p. example, we can simply writes:
guitar.price = 10000

# So, all that line 47 is doing is: When Ruby sees the equals sign (=) syntax, it invokes secretly the price= method,
# in a way that lines 47 and 40 are technically equivalent, because they're both ivoking the same method and passing
# an argument, but the second syntax is cleaner, and more used.

p guitar.price
