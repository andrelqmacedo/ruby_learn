a = [1, 2, 3]
#b = a

# How to force the creation of a duplicate/copy?
# By calling one of two methods, it´s possible to copy an object:
# dup and clone methods

b = a.dup
c = a.clone

# So now, we've three different arrays, and although they look the same they are three completly different objects

p a.object_id
p b.object_id
p c.object_id

# If we push new elements in the 'a' array, 'b' and 'c' will not be affected, because they are different objects
a.push(4)
p a
p b
p c

puts

d = "Shop Rite"
e = d # Here we're just creating a new reference to this object
# All that 'e' does is point of references the exact same string object that 'd' is referencing

f = d.dup

d.upcase!
# As we call/invoke a mutate method, 'e' will change as well, because both variables are referencing to
# the same object
p d
p e

# But, if we call the dup or clone methods the situation is different
p f
