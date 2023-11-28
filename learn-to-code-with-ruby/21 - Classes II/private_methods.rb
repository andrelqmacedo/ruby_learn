# Private method - it's an instance method that can not be called outside of the object.

# So, it can onlt be invoked by another instance method on the object.

# The reason behind private methods is to encapsulate some kind of complex logic, to ensure that we dont put to many
# lines of code into one method and make that method too much complex. If we abstract some of that complex logic, to
# a separate method, we dont necessarily  want it to be a invokable instance methodo of the object. We want it to be
# essentially a helper method inside.

class Smartphone
  attr_reader :username, :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  private                                               # The way we transform a method in private is: we do this within
                                                        # our class, above all our private methods, we use the special
                                                        # keyword 'private'. So, we're simply going to write it directly
                                                        # in line. And any methods that fall bellow that keyword will
                                                        # immediately become private. Which means we can't invoke it
                                                        # outside the class.
  def generate_production_number
    random_number = rand(10_000..99_999)
    another_random_number = rand(10_000..99_999)
    "2023-#{random_number}-#{another_random_number}"
  end

end

s1 = Smartphone.new("rubyfan123", "topsecret")
p s1.username
p s1.production_number
