# each_with_index - this method operates similarly with the each method. the difference is it also
# provides the index position of the element that is being iterated over

colors =["Red", "Blue", "Green", "Yellow"]


#To use the each_with_index method, we pass as block variables first the element and then the index position
colors.each_with_index { |color, index| puts "The value for index position #{index} is #{color}"  }


[5, 10, 15].each_with_index do |number, index|
  puts "The number is #{number} and the index is #{index}"
  puts "The product of the two is #{number*index}"
end
