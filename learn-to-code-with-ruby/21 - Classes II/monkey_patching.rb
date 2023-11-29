# Monkey patching - adding functionality to an existing Ruby class

p "hello".class

class String
  def count_vowels
    self.downcase.count("aeiou")
  end
end

p "Hello".count_vowels
p "refrigerator".count_vowels

# We monkeypatched the "String" class, i.e, we added functionality to an existing Ruby class


class Array

  def sorted?
    self == self.sort
  end

end

p [1, 2, 3].sorted?
p [4, 2, 1].sorted?
