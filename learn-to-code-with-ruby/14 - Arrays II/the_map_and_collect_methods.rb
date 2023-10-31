# map/collect - create a new array by performing a consistent operation on all elements
# from an original array

# We use map/collection when we want to generate an array the same lenght of the original array

# This methods are aliases one to another - wich means they work in the exact same way under the hood

birds = ["Eagle", "Sparrow", "Pigeon", "Hawk", "Penguin"]

# We can do this utilizg the each method:
        # lengths = []
        # birds.each { |bird| lenghts << birds.leght }
        # p lenghts


# The map method will accept a block
# The main difference between 'each' and 'map' is that with the 'map' method, Ruby is going to store
# the result of this calculation as the element in a newly generated array
# So, the 'each' method is not going to generate an array, it's simply going to iterate one element at a time
# The 'map' method is going to iterate, allow us to perform some kind of logic on each element, and whatever
# that logic returns is going to be stored in a new array

lengths = birds.map { |bird| bird.length }
p lengths

lengths = birds.collect { |bird| bird.length }
p lengths

uppercased_birds = birds.map { |bird| bird.upcase }
p uppercased_birds
