all_caps_firetruck = "firetruck".upcase

def add_two_numbers(a, b)
  puts "Ok, i´m solving your math problem.."
  #return "Just kidding, I´m a troll"
  return a + b
end

#The 'return' statment immediatly terminates/finish the method. The method no longer runs after the return statment

result = add_two_numbers(1, 5)
p result