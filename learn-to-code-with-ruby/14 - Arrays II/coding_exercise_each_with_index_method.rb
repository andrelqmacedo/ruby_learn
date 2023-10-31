# Define a product_of_number_and_index method that accepts an array of numbers.
# The method should iterate over the elements. For each element,
# it should multiply the element by its index position. It should
# then add that product to a rolling sum. Return the final sum.
# If the array has no elements, the final sum should be 0.
#
# Examples:
# The => indicates the expected return value
# product_of_number_and_index([1, 2, 3]) => (0 * 1) + (1 * 2) + (2 * 3) => 8
# product_of_number_and_index([])        => 0

def product_of_number_and_index(numbers)
  count = 0
  if numbers.length != 0
    numbers.each_with_index do |number, index|
      product = number * index
      count += product
    end
    return count
  else
    0
  end
end

p product_of_number_and_index([1, 2, 3])
p product_of_number_and_index([])


# def product_of_numer_and_index(numbers)
#   sum = 0
#   numbers.each_with_index {|number, index| sum += number * index }
#   sum
# end
