# Block parameters and block arguments

# Whenever we use the 'yield' keyword, we can give it one or more arguments, and those will become the block
# variables that will be available to the block.

def speak_the_truth(name)
  yield(name) # This value represents what will be given to the block that's going to be provided to the 'speak_the_truth' method
end

speak_the_truth("Andre") { |name| puts "#{name} is brilliant" }
speak_the_truth("Phil") { |name| puts "#{name} is incredible" }

# The 'yield' keyword is not limited to one value, we can pass as many as we want

def number_evaluation(num1, num2, num3)
  yield(num1, num2, num3)
end

p number_evaluation(5, 10, 15) { |a, b, c,| a + b + c }
p number_evaluation(3, 4, 5) { |a, b, c| a * b * c }
