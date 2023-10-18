# step - execute the current line and move to the next line
# shortcut: "s"
# It's helpful when we want to run our code step by step, or line by line;

require "debug"

debugger

puts "Hello".downcase
puts "Goodbye".upcase

#The debugging, whenever we use the 'step' keyword, will stop the code at the next line that's about to run
# We can mix the use of 'continue' and 'step' keywords


# Another point the the 'step' keyword is helpful is dealing with the iterations within a program:
3.times do |count|
  puts "On loop number #{count}"
  puts "blahblahblah"
end



#'quit' or 'q'
