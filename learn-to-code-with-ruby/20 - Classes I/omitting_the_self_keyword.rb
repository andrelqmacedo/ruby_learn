class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

  def details                 # We can reference our own methods and we can reference any of te built-in method that are
    #self.nil_details         # going to come by default on every Ruby object.
    nil_details
    #self.class_details
    class_details
  end

  def class_details
    puts "It is made from the #{self.class} class."
  end

  def nil_details
    puts "Is it nil? #{self.nil?}"
  end

end

guitar = Guitar.new
guitar.details

# 'self' is completly technical valid, but what Ruby is going to try to do is help us, by allowing us to write less code,
# if it's possible. So, what that means is that if we omit the 'self' keyword entirily and we reference a method, Ruby is
# going to try to locate it by default on the current object.

# So, in out 'details' method, if we get rid of the 'self' keyword completly, the code is still going to work.
# That's because when Ruby sees 'nil_details', it's going to assume it's going to be an instance method, available
# on the current object.

# It's (almost) going to supose that 'self' is available, that the current object is avalilable, that it has a 'nil_details'
# instance method, and then Ruby locates it and runs its logic.

# The same rules apllies for the build-in methods.

# There are some circunstances that we need to explicitly use the 'self' keyword, or otherwise we're going to run
# into an error. One example: If we remove the 'self' from the interpolation on the 'class_details' method we're going
# to get an error. And that's because 'class' is a special/reserved keyword.

# Typically, we'll find in mosto of the Ruby codebases: "If it's not needed, it's going to be omitted or left out
# by the developer." - Simply because it leaves the code a little bit cleaner.

# When a method references another method, it's important to understand that those methods are instance methods on the same
# object and we are automatically invoking them on the same object.
