# How to use parentheses to establish precendence in Ruby

# precedence as the order of importance

def authenticate_agent (agent_number, name, job_title)
  # agent_number is 007 and name is James Bond
  # job_title is Secret Agent
  if (agent_number == "007" && name == "James Bond") || job_title == "Secret Agent"
    puts "Acess granted. Please proceed to Intelligence Department"
  else
    puts "Acess denied, #{name}!"
  end
end

authenticate_agent("007", "James Bond", "Secret Agent")
authenticate_agent("007", "James Bond", "HR Manager")
authenticate_agent("005", "Alec Trevelyan", "Secret Agent")
authenticate_agent("113", "Boris Fletro", "Janitor")


# Whenever we use parentheses we´re telling Ruby: "run the logic between this parentheses first and evaluate that and then procede"
# Another way to solve this problem would be the assignment of variable to capture the logic, so we wont have tge && and || operators on the same line

