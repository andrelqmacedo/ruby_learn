# self keyword - returns the entity in which the keyword is used

# it's dynamic and self reflective.

# the 'self' keyword can be used anywhere within our program, it can be used at the top level of a ruby file,
# it can be used within a class, within a method.

# what's going to return back to us is always going to be dependent on where it is being utilized, i.e, the context
# within which is being used.

# what 'self' will return is the entity in which the keyword is being utilized. I will return 'it self', whatever it self
# happens to be, dpeending of where the word is used.

class Guitar
  puts "Inside Guitar class: #{self}"   # 'self' being used within the body of the guitar class, so 'self' will return
                                        # whatever the entity in which the keyword is being utilized.
                                        # because we're using 'self' within the Guitar class, it will return the
                                        # Guitar class. That's where 'self' is currently.

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

  def details
    puts "Is it nil? #{self.nil?}"                 # 'self' whenever we used that keyword within an intance method, will
                                                   # refer to the instance itself. It will refer to the object that has that
                                                   # instance method. So, 'self' in this context, will refer to the 'guitar'
                                                   # object, created at line 42, i.e, the actual object that we're invoking
                                                   # the method on.
    puts "It is made from the #{self.class} class."
  end
end

# So, 'self' in a broader sense, refers to the entity in which the keyword is used.


guitar = Guitar.new
guitar.details

# Importance: within the body of an instance method we have a reference to our object. And thus, because we have acess
# to the current object, we can invoke its methods right within other methods, belonging to the object.
# So, why does 'self' exists? So, within an instance method we can invoke other instance methods.
# This funcionality exists so that we can build many different instance methods encapsulating little bits of logic,
# and then use another instance method to perhaps invoke them.

# 'self' is almost like a stand in or a name for that eventual instance that will be created.
