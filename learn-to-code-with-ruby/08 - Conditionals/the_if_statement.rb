#the if statement

if 5 < 7 #if the statement is boolean value true than Ruby gonna execute the body (or the block) of the code
  puts "That math statement is true"
end 


if 5 < 3 #by the same logic, if the statement is wrong, Ruby will not execute the body of code inside the 'if' statement
  puts "Something totatlly different here"
end 

# That allow the program to take different directions
#The if gonna have some dynamic calculation that we cannot know in advance


password = "topsecret"

if password == "topsecret"
  puts "Congrats, you´ve logged in!" 
end

word = "kangaroo"

if word.lenght == 8
  puts "Hooray, the word has 8 characters"
end

