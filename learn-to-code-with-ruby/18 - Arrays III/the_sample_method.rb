# sample method - extract one or more random elements from an array, i.e., collect a sample from the original collection

flavors = ["Chocolate", "Vanilla", "Strawberry", "Cookies'n Cream", "Passion fruit"]

p flavors.sample
puts

# If we invoke the sample method with an argument, it's important to notice:
#  a) Now matter what we pass as argument, the sample method will return an array;
#  b) And the number passed as argument represents how many elements from the original array should be stored in the returned array, i.e.,
#  how many random elements to extract:

p flavors.sample(1)
p flavors.sample(2)
