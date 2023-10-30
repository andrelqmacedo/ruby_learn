fives = [5, 10, 15, 20, 25, 30, 35, 40]
evens = []

#Conditional filtering - that's an example, i.ee, taarget elements that meet some criteria or vice versa
# fives.each {| value | puts value  if value.even? }

fives.each do | n |
  if n.even?
    evens.push(n)
  end
end

p fives
p evens
