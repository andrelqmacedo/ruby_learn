# There is a third method that we can invoke called 'attr_accessor'. With this method we can define both a reader and a writer
# for any symbols that we provide as arguments for this method, as example bellow, we use the 'attr_acessor' method
# with the :price, in a way that there's no need for the :price in the 'attr_reader' method, or the 'attr_writer' method
# at all. As bellow:


class Guitar

  attr_reader :type, :wood, :strings #, :price
  #attr_writer :price
  attr_accessor :price

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @price = 1500
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end
end

guitar = Guitar.new
p guitar.type
p guitar.wood
p guitar.strings
p guitar.price

guitar.price = 10_000
p guitar.price
