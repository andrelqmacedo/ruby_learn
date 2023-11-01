# any? method - check if any array element satisfies a condition
# all? method - check if every array element satisfies a condition

# Both are predicated methods that accept a block;

sports = ["Football", "Basketball", "Baseball", "Tennis", "Golf"]

p sports.any? { |sport| sport.length == 8 } #true
p sports.any? { |sport| sport.length == 12 } #false
# The any? method is looking for just one match, if ONE element satisfies the condition, the any? method will return true

p sports.all? {|sport| sports.length < 100 }
# It's true that all elements in the sport array have less than 100 charecters
p sports.all? {|sport| sports.length < 10 }
# As not all elements satisfies the condition, the all? method will return false
