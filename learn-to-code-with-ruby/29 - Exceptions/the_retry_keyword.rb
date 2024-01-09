def sub(a, b)
  begin
    a - b
  rescue TypeError => e  # Assign a name that is going to be given to the error object that Ruby is going to generate.
    a = a.to_i
    b = b.to_i
    retry
  rescue NoMethodError => error
    a = 0
    b = 0
    retry
  end
end

puts sub(3, 5)
puts sub(3, "5")
puts sub(nil, nil)
