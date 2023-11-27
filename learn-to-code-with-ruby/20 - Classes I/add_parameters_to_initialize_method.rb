# We have a minor problem with the design for our class, which is: The Guitar class is always initializing with the same
# hardcoded, constant values.

# We can make the values form within a object vary, and we can make these values vaty upon instantiation, i.e, when
# we first create the guitar.

# So, we will define parameters for the initialize method,



class Guitar

  attr_reader :type, :wood, :strings
  attr_accessor :price

  def initialize(type, wood, strings, price)
    @type = type
    @wood = wood
    @strings = strings
    @price = price
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end
end

sound_viking_2000 = Guitar.new("Acoustic", "Mahogany", 6, 1_000)
thunderstorm = Guitar.new("Electric", "Alder", 7, 2400)


p sound_viking_2000.type
p sound_viking_2000.wood
p sound_viking_2000.strings
p sound_viking_2000.price

# With this way, when we initialize a guitar, we can totally customize it to have these distinct values
# for the internal state.

p thunderstorm.type
p thunderstorm.wood
p thunderstorm.strings
p thunderstorm.price

# It's important to know that we're defining a parameter list, so all the typcal rules about parameter
# will apply. So, for example, if we do not provide enough parameters or we provide too many, Ruby is going to raise
# an exception.
