# Optitonal parameter is a method paramenter that we do not have to provide a argument for when we invoke the method
# We´re able to do this asking for Ruby to provide a default value

def title_assigner(name, sufix = "The Great") # Here we´re providing the default value, while the 'name' parameter its not optional
  "#{name} #{sufix}"
end

puts title_assigner("André")

puts title_assigner("Gandalf", "The White")