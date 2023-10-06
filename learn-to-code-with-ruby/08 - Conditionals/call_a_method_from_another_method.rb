# How to invoke a method from another method?
# A helpful technique for breaking up logic and splitting it across smaller methods;

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b 
end

def calculator(a, b, operation)
  if operation == "add"
    add(a, b)
  elsif operation == "subtract"
    subtract(a, b)
  elsif operation == "multiply"
    multiply(a, b)
  else
    puts "That's not an available math operation"
  end
end

puts calculator(10, 15, "add")
puts calculator(20, 7, "subtract")
puts calculator(8, 7, "multiply")
puts calculator(10, 5, "blabla")
