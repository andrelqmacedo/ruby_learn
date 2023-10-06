# The unless keyword - It works as an inverse/oposite of the if statement, that execute a condition is met
# Is essentiatly equivalent to writing "execute if a condition is false"

#Unless : "except if" -> "run this code except if the condition is true"

password = "nonsense"


# actual password is "whiskers"

# if password == "whiskers"
#   puts "Welcome to the system"
# else 
#   puts "Incorrect password"
# end

unless password == "whiskers" #execute the section of code if the condition is false
  puts "Incorrect password" #This code will run unless the condition above is valid
else 
  puts "Welcome to the system"
end 

# Check if the user´s passoword does NOT include the letter "a"
# include?

unless password.include?("a") #execute if false
  puts "This will run unless the password includes the letter 'a'"
end