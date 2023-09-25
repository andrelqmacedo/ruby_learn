# Define a even_or_odd_operations method that accepts an integer.
# If the integer is even, the method should return the number + 2
# If the integer is odd, the method should return the number - 3
#
# Examples:
# The => indicates the expected return value
# even_or_odd_operations(2)    => 4
# even_or_odd_operations(0)    => 2
# even_or_odd_operations(13)   => 10
# even_or_odd_operations(9)    => 6


def even_or_odd_operations(number)
  if number.even?
    return number + 2
  end
  if number.odd?
    return number - 3
  end
end

even_or_odd_operations(2)    
even_or_odd_operations(0)    
even_or_odd_operations(13)   
even_or_odd_operations(9)    

#refactoring

def even_or_odd_operations2(number)
  if number.even?
    return number + 2
  end
  number - 3
end
