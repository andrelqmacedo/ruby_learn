#How to declare multiple conditions? Using the && operator
# We can ask Ruby to verify if multiple conditions are true.

# && and

#This is not limited to two conditions

puts "Please enter username"
username = gets.chomp
puts "Please enter your password"
password = gets.chomp

if username == "rubydev1" && password == "topsecret" #true && true
  puts "Congrats, you´ve logged in."
else
  puts "Incorrect, acess denied"
end
