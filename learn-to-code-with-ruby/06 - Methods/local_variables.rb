#Local variable - it´s simply a variable declared withing a method´s body, i.e., it´s within the methods execution enviroment. It only exists within this piece of code;

action_star = "Jean Claude Van Damme" #global variable

def film_movie
  action_star = "Arnold Schwazenegger"
  puts action_star
end

#Outside the scope of the method, the variable 'action_star' doesnt have the value "Arnold ..." 
#Scopes are the boundaries of where a value exits in our program 
puts action_star