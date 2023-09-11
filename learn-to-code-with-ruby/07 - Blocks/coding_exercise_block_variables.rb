# Define an increments_of_two method that accepts no arguments. 
# It should output the multiples of 2 from 0 to 10. 
# Output the multiples in order with no spaces between them.
# Use the print method in your solution.
#
# Example:
# increments_of_two() should output "0246810"


def increments_of_two 
  6.times { |count| print count * 2}  # 'count' gonna be 0, 1, 2, 3, 4, 5 
end                                   # so, when we multiple it by 2, the outputs gonna be the desired one

increments_of_two