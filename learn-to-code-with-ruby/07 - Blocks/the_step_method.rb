# The step method allows us to move from a number to another in intervals

1.step(100, 5) { |number| puts "#{number}" }

# With this method, the first argument is the number we want to go to
# The second argument indicates the interval (or steps) we want

1.step(50, 7) do |number| 
  puts "Let´s go up by 7"
  puts "I´m now on #{number}"
end