# Blocks implicitly return their last evaluation back to the method

# When we attached a block to a method that has the 'yield' keyword, the block will implicitly return its last
# evalutation back to the method itself.
# Which means we can capture some kind of value from the block and use it within the body of our method.

def who_am_i
  puts "Hello there. Let me tell you about myself"
  adjective = yield
  puts "I´m very #{adjective}"
end

who_am_i {"handsome"}
puts
who_am_i {"talented"}
puts

# Just like with method return values, the last line here in the block is what's going to be the evaluation
who_am_i do
  "handsome"
  "wonderful"
end

puts

# It's very important that we do not use the actual 'return' keyword in our block.
who_am_i { return "charming"}
# The problem is that Ruby is going to drag this block and run it right within our method, wherever we have used the
# 'yield' keyword. When ruby sees the 'return' keyword, it interprets that the method should terminate at this point and
# and return a value. That´s the purpose of the return keyword (it terminates a method and produces a return value).

# So, when we want the block to give something back to the method, we're just going to put the final evaluation,
# just like we'd with a implicit method return value
