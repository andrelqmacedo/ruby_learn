# Anti-pattern - a 'pattern' to avoid when writing code

# A design pattern refers to a way of structuring code that is probably going to prove advantegeous.
# Many developers have seen similar problems befeore and have reasoned about them and come up with different
# solutions, some solutions proved to be good, and others proved disastrous in the long term.

# So, with time, the community create these ideas of 'good design patterns', or good ways of structuring our code, that
# are likely to create programs with less bugs and more efficiency.

# The anti-patter is the opposite.

# One type of anti-pattern is "creating a separate piece of state om your object to store a derived value"

# But, what's a derive value? A derived value is a value that is calculated or computed from another piece
# of state; Whenever you have a piece of information on your object that is dependent on another, that only
# changes when another piece of state changes, that derived, calculated, computed value, you dont want it to make
# part of your object state, because that will require you to have to keep it up to date manually, each time the
# original piece of state changes.

class Rectangle
  attr_accessor :height, :width


  def initialize(height, width)
    @height = height
    @width = width
    # @area = height * width                # anti-pattern => making a derived value a regular value
                                            # The better pattern is simply yake that derived calculation
                                            # and extract it to an instance method
  end

  def area
    height * width
  end

end

r = Rectangle.new(3, 5)

# To calculate the area of a rectangle we multiple its height by its width. So, the area is a perfect
# example of a derived value. It can only exist because is calculated based off of another piece of data.
# The area is a calculation that relies on the height and the width.

p r.area
r.height = 10
p r.area

# With the method we dont have to manually remember to update an area piece of state, because we didn't create
# that extra derived piece of state. We extracted that computation to a helper method
