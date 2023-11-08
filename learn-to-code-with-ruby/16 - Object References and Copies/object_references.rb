# Object references vs. Object copies
# We've be careful and mindful about the variables in our program, i.e., the names they're using and the exact
# objects that they are referring to.

a = [1, 2, 3]
b = a

# Ruby evaluates the right side of an equal (atribution) signal first
# So, in this example, what exactly will be assigned to 'b' ?
# Is it going to be the array [1,2,3] or a copy of this array?

# The answer is that we're not creating a copy. As we assign a to b, we're simply giving a new name to the exact same
# array. So the variables 'a' and 'b' are actually pointing to, or naming, the exact same array

p a
p b

# There's a method available on every object in ruby called 'object_id', and it'll return just an unique number
# identifier for that object in our program.

p a.object_id
p b.object_id

p [1, 2, 3].object_id # This one is a separate array that looks the same, so the number identifier will be different.
# Although the elements are the same, the objects are not the same, thus the numeric identifier is differnt;

# If we copy the array as above and paste it several times, each time we're going to get a different number identifier:
p [1, 2, 3].object_id
p [1, 2, 3].object_id
p [1, 2, 3].object_id
# This happens because each time Ruby is creating a new array


# So, the key distinction here is that two objects may look the same and they indeed may be two different objects
# And vice-versa, we may have two names in our program, like two variables, but they may be referring to a singular
# single object. That can potentially lead to bugs, if we're not careful.

# For example:
a.push(4)
p a
p b
# This logical applies in reverse.
b << 5
p a
