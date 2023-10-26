# 90 to 100 is an A
# 80 to 89 is a B
# 70 to 79 is a C
# 60 to 69 is a D
# <60 is a F

def calculate_test_grade(grade)
  case grade
  when 90..100 then "A" #single line case syntax
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

puts calculate_test_grade(96)
puts calculate_test_grade(67)
puts calculate_test_grade(88)
puts calculate_test_grade(75)
puts calculate_test_grade(13)
puts calculate_test_grade("nonsense")
