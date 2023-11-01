# Special way that allows out methods to accept any number of arguments
# essentially an unlimited number of arguments at a given position

# We're going to use a special syntax before a parameter, and that special syntax is going to indicate
# that parameter is dynamic, it can accept any number of arguments at that position when that method is
# invoked

# When we invoke that method, Ruby is going to capture all of the arguments, however many there are in an array

# We use an asterisk * (sponge/splat) before the paramenter to the method accepts all number of parameters
# Ruby will capture all the elements given as parameters and push them inside an array

# We can only have on sponge argument within a method definition


def adder(*numbers)
  p numbers
  sum = 0
  numbers.each { |number| sum += number}
  sum
end

p adder(1)
p adder(1, 2)
p adder(1,2,3)
p adder(1,2,3,4,5)
p adder

# It doesn't need to be necessarily the only parameter, we can add parameters before and after
#     def adder(a, b, *number) for example
#     p adder(1,2,3) - a = 1, b = 2, *numbers = [3]
#     p adder(1,2,3,4,5) = a = 1, b = 2, *numbers = [3, 4, 5]
