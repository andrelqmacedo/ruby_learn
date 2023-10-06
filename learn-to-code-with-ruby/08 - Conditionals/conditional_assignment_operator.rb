# Conditional Assignment Operator ||=

#It's responsability is to assign a value to a varable very similar to how the equal sign works
# but thew difference is that's is conditional, wich means Ruby will only assign that value to a variable
# based on a condition/criteria is met. That criteria is if the variable´s value is nil.

# if the value of the variable is not nil, it will do nothing

my_value = nil
p my_value


my_value ||= 5
p my_value

my_value ||= 8
p my_value