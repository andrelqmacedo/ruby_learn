# Define a custom_map method that accepts an array.
# The method should emulate the functionality of the array's map method.
# The block that we pass to custom_map will specify what to do to
# each array element. The custom_map method should return an array
# of the results of those operations.
# Do NOT use the array's map method in your solution.

def custom_map(elements)
  returned_array = []
  elements.each {|element| returned_array << yield(element)}
  returned_array
end


# Examples:
# The => indicates the expected return value
p custom_map([1, 2, 3]) { |number| number * 3 }            #=> [3, 6, 9]
p custom_map(["Hello", "Goodbye"]) { |text| text.length }  #=> [5, 7]
p custom_map([]) { |text| text.length }                    #=> []
