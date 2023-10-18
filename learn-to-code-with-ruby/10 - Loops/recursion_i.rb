# Recursion - is when a method calls itself, and allows us to break down a complex problem

# Base case - condition to tells the recursion to stop

#Classic example of a problem that can be expressed very elegantly with recursive solution:
# factorials 
# 5! = 5*4*3*2*1 = 120 
#    5 * 4! 
#        4 * 3!
#            3 * 2! 
#                2 * 1!
#                    1

# 4! = 4*3*2*1 =   24
# 3! = 3*2*1 =     6
# 2! = 2 * 1 =     2
# 1! =             1

def factorial(number)
  return 1 if number == 1
  number * factorial(number - 1) 
end 


puts factorial(5)
puts factorial(6)