# A module is a "toolbox" of related classes, methods and/or constants; A organizational grouping of related constructs
# Module organize functionality into containers.
# It's similar to the directories on our computer
# Modules are not classes; we cannot create 'instances' of a module. It doesn't have any specific functionality itself.

# Modules propose some advantages, especially with larger codebases, because we're going to be able to group or
# categorize related code within the same modules; And we can have as many modules as we want.

# To declare a module we use the 'module' keyword, and it's a community convention to use PascalCase with the
# name of the modules (every first letter of a word is capitalized)

module LenghtConversions

  def LenghtConversions.miles_to_feet(miles)        # In order to define a method within a module, we're going to need to
    miles * 5280                                    # prefix it with the module name. We can use the 'self' keyword also.
  end

  def self.miles_to_inches(miles)                   # If we remove the 'self' keyword in the declaration of the 'feet' variable
    # feet = self.miles_to_feet(miles)              # Ruby is going to assume that the method being called (miles_to_feet) is
    feet = miles_to_feet(miles)                     # from the same module, and by default is going to prefix it with 'self'
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end

end


puts LenghtConversions.miles_to_feet(50)
puts LenghtConversions.miles_to_inches(200)
puts LenghtConversions.miles_to_centimeters(300)
