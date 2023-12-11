# One of the advantages of modules is that they nest the method within a namespace within this protected container
# that serves as a barrier, that prevents that method name from 'escaping'.

# Another advantage of that approach is that we can actually have methods with identical names, as long as they live
# within two different modules, two different namespaces;

module Square

  def self.area(side)
    side * side
  end

end


module Rectangle

  def self.area(length, width)
    length * width
  end

end

puts Square.area(10)
puts Rectangle.area(10, 5)
