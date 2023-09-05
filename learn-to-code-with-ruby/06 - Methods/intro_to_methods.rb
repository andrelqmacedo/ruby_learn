#Custom methods - writing our own methods, wich we can invoke and use.
def introduce_my_self #def(ine) methods_name
  puts "Hi, my name is Andre"
  puts "I enjoy Ruby"
  puts "It´s kinda challeging"
end

# Invoke the method, to start the process to run the bit of code defined in the method´s body
introduce_my_self
introduce_my_self() # As the method doesnt receive any argument, the convention is to do not use parentheses
