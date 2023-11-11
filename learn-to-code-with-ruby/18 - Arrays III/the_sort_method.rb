# sort method - sorts an array in ascending or alphabetical order (for strings)

# So, with numbers we're going to get an ascending sort, which means from the 
# smallest to the greatest numeric value
p [2, 4, 1].sort 

# If we want the array sorted in descending order (from greatest to smallest), what we can do is to 
# combine the 'sort' method with the 'reverse' method, just like this:

p [2, 4, 1].sort.reverse

# With strings, Ruby is goint to sort alphabetically, so the values that are
# closest to the start of the alphabet are going to come first;

p ["Hello", "Blah", "Zebra"].sort 
p ["Hello", "Blah", "Zebra"].sort.reverse 

# It's important to notice that when Ruby starts sorting strings,
# it considers the capital letters to come before all the lowercase letters!
# A-Z comes before a-z

p ["zion", "Gilgamesh", "Abraham", "Kali", "abraham", "Zion"].sort