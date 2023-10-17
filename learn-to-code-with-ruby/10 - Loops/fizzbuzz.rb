# rite a short program that prints each number from 1 to a given number on a new line. 

# For each multiple of 3, print "Fizz" instead of the number. 

# For each multiple of 5, print "Buzz" instead of the number. 

# For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.

def fizzbuzz(n)
  i = 1
  while i <= n 
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
    i += 1 #augmented assignment operator
  end
end

fizzbuzz(30)