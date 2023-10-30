# Define a double_elements method that accepts an array of numbers.
# The method should return a new array where each element is
# double its value from the original array.
#
# Examples:
# The => indicates the expected return value
# double_elements([1, 2, 3, 4, 5])         => [2, 4, 6, 8, 10]
# double_elements([10, 20, 30])            => [20, 40, 60]

def double_elements(numbers)
  array2 = []
  numbers.each do |number|
    array2.push(number * 2)
  end
  return array2
end

# def double_elements(number)
#   result = []
#   values.each { | value | result.push(value*2) }
#   result
# end

p double_elements([1, 2, 3, 4, 5])
p double_elements([10, 20, 30])


# Define an extract_long_words method that accepts an array of strings.
# The method should return a new array of only the strings that
# have more than 7 characters.
#
# Examples:
# The => indicates the expected return value
# extract_long_words(["spaghetti", "penne", "fettuccine", "ziti"])              #=> ["spaghetti", "fettuccine"]
# extract_long_words(["lasagna", "ravioli", "cannelloni", "tagliatelle"])       #=> ["cannelloni", "tagliatelle"]

def extract_long_words(strings)
  long_strings = []
  strings.each do | string |
    if string.length > 7
      long_strings.push(string)
    end
  end
  return long_strings
end

# def extract_long_words(elements)
#   long_ones = []
#   elements.each {|element| long_ones.push(element) if element.lenght > 7  }
#   long_ones
# end

p extract_long_words(["spaghetti", "penne", "fettuccine", "ziti"])
p extract_long_words(["lasagna", "ravioli", "cannelloni", "tagliatelle"])

# Define a pastas_and_sauces method that accepts two arrays.
# The first array with hold pasta types and the second will hold sauces.
# The method should return an array consisting of all the combinations
# of pastas and sauce. Combine each pasta and sauce in a new string
# (see example below). Make sure to capitalize each pasta and sauce
#
# Examples:
# The => indicates the expected return value
#
# pastas_and_sauces(["fettucine", "spaghetti", "penne"], ["alfredo", "bolognese", "pesto"])    =>
# ["Fettucine with Alfredo sauce", "Fettucine with Bolognese sauce", "Fettucine with Pesto sauce", "Spaghetti with Alfredo sauce", "Spaghetti with Bolognese sauce", "Spaghetti with Pesto sauce", "Penne with Alfredo sauce", "Penne with Bolognese sauce", "Penne with Pesto sauce"]

def pastas_and_sauces (pastas, sauces)
  mix = []
  pastas.each do |pasta|
    sauces.each do |sauce|
      mix.push("#{pasta.capitalize} with #{sauce.capitalize} sauce")
    end
  end
  return mix
end

p pastas_and_sauces(["fettucine", "spaghetti", "penne"], ["alfredo", "bolognese", "pesto"])
