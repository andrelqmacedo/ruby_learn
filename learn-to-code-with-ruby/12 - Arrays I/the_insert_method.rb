# The insert method - adds an element aa specifiec index position within an array

credit_card_transactions = [19.99, 29.43, 3.87]

# The first argument is the index position at wich we want to insert the new value
# The second argument is the actual value to add
credit_card_transactions.insert(1, 49.99)

p credit_card_transactions

# With this method we do not remove any of the previous existing values, but only inject the desired value

# It's possible to inject multiple values
credit_card_transactions.insert(0, 1.23, 4.56, 7.89)
p credit_card_transactions

# If the index positions in the first argument is past the end of the array,
# Ruby is going to fill the gaps in between with nil

credit_card_transactions.insert( 10, 6.55)
p credit_card_transactions

puts

p [1, 2, 3].insert(6, 1000)
