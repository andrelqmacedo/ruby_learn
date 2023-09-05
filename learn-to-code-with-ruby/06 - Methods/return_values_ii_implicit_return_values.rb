def add_two_numbers(a, b)
  #Line 1
  #Line 2
  a + b #Even without the return statment, Ruby will implicitly return the last line, the last evaluation
end

def nothing
  puts "What will be the return value here?"
end 

#In this case, Ruby will return 'nil' as default

result = nothing
p result
p result.class 

# In Ruby, it is required that a method produce a return value.
#But when we do not have a return keyword in our method, Ruby will return nil


puts add_two_numbers(3, 5)

# If you want to terminate the method earlier, we can use the 'return' keyword to cut the method, and produce the final output

def convert_to_currency(value) 
  converted = value.to_s
  puts "$#{converted}"
end

convert_to_currency(14)
convert_to_currency(9)