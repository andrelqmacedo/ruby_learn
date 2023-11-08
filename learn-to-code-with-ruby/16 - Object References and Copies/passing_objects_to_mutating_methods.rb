# Passing objects in as arguments to methods

# When we pass an object in to a method, we're not going to pass a clone or a copy.
# We're going to pass the original object, which means that the method technically has the possibility of mutating
# and changing that underlying object

def append_5(elements)
  elements << 5
end

values = [1, 2, 3, 4]

p append_5(values)

# So, when we pass 'values' we're going to have acess to the original array
# thus, in line n. 8, when the method runs, is going to mutate the underlying 'values' array

p values

# This method has the potential to create a side effect, which means a change that escapes the method;
# So, this method actually mutates a piece of data outside of the method.
# Whatever we pass is as the argument that has the possibility to be changed, which is why we have to be careful,
# to not mutate objects we don't wanto to

def uppercase(text)
  text.upcase!
end

name = "Boris"
uppercase(name)
p name
