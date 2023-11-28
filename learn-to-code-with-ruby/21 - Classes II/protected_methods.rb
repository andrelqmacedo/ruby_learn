# Public methods - can be invoked by any other object

# Private methods - can only be invoked by internal methods (of the class)

# Protected methods - can only be invoked by internal methods or objects of the same class
# protected methods can be invoked on the object, but only by an object made from the same blueprint.

class Car

  def initialize(age, miles)
    base_value = 20_000
    age_deduction = age * 1000
    miles_deduction = miles / 10
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is better" : "You car is worse"
  end


  protected                                   # Very much like 'private', the 'protected' keyword is going to create a
                                              # category of methods down bellow, so all the methods the we declare after the
                                              # 'protected' keyword will be protected.
                                              # So, in this example, the 'value' method can ve invoked within inside of a car
                                              # object and it can be invoked on any other car object. However, we're not going
                                              # to invoke it directly on a car object from the outside.

  def value
    @value
  end



end

civic = Car.new(3, 30_000)
fiat = Car.new(1, 20_000)
dodge = Car.new(8, 100_000)

puts civic.compare_car_with(fiat)
puts civic.compare_car_with(dodge)
