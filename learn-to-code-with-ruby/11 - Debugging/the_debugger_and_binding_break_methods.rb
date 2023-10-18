require "debug"

#Standard library - Collection of code organized in files called "librarys"

# DateTime library - helps with..dates and times

candy = "Sour Patch Kids"
puts "I love eating #{candy}"

debugger #breakpoint

beverage = "Arizona Iced Tea"
puts "I love drinking #{beverage}"

debugger #breakpoint

puts "This is the end of the program"


# To make the code run after the break point we must type "continue" or just "c" in the terminal


# As an alternative to the debugger, we can use another method which is the break method on the binding object
# debugger = binding.break :
# # candy = "Sour Patch Kids"
# puts "I love eating #{candy}"

# binding.break                     => It'll work the exact same way as the debugger

# beverage = "Arizona Iced Tea"
