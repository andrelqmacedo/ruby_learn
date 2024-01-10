# The keyword 'ensure' is a section of code that is going to run no matter what, its going to run if we have
# a valid execution in our 'begin' section or if we have something 'rescued' as well.
#
# It's basically a chunk of code to run no matter what at the end of the method. And in the real-world the 'ensure'
# its mostly used in a 'cleanup operation'.

def sub(a, b)
  begin
    a - b
  rescue TypeError => e
    a = a.to_i
    b = b.to_i
    retry
  rescue NoMethodError => error
    a = 0
    b = 0
    retry
  ensure
    puts "I´m always going to run"
  end
end

puts sub(3, 5)
puts sub(3, "5")
puts sub(nil, nil)
