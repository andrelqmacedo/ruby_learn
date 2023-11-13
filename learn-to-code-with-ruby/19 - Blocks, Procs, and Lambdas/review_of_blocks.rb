# BLOCKS

# A block is a chunk of code to execute.
# An argument is an object we pass a method, while a block is a procedure
# A block cannot exist without a method.
# A block is a temporary construct

# BLOCKS VS METHODS

#  methods can be invoked over and over.
#  a block is used only once, then disappears.
#  methods capture the repeatable steps of a procedure
#  a block captures the custom step of a procedure.

[1, 2, 3].each { |value| p value }
p [1, 2, 3].map { |value| value ** 2 }
