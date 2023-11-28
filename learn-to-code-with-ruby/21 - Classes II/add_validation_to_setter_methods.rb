# How can we add validation logic to our setter methods?

# Ruby's helper methods, like 'attr_reader' e 'attr_writer' are great, but they're pretty simplistic.
# There are no checks, there are no validation, there are no confirmations that what we're writing is actually
# valid. Many times, that's going to be me critical to our actual program, our business logic.

class Smartphone
  attr_reader :username, :production_number, :password #password is here temporarily to see it's value

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  def password=(password)
    @password = password if valid_password?(password)
  end

  private

  def generate_production_number
    random_number = rand(10_000..99_999)
    another_random_number = rand(10_000..99_999)
    "2023-#{random_number}-#{another_random_number}"
  end

  def valid_password?(password)
    password.length >= 6
  end

end

s1 = Smartphone.new("rubyfan123", "topsecret")

p s1.production_number
puts
p s1.password
puts
s1.password = "programming"
puts
p s1.password
puts
s1.password = "ok"
puts
p s1.password
