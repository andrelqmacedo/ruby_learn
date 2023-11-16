to_euros = proc {|currency| currency * 0.93} # to_euros = Proc.new {|currency| currency * 0.93}
to_rupees = to_euros = Proc.new {|currency| currency * 82.28}
to_pesos = proc {|currency| currency * 17.55}

us_dollars = [10, 20, 30, 40, 50]

# p us_dollars.map {|number| number * 0.93} #dollar to euro

p us_dollars.map(&to_euros)
p us_dollars.map(&to_pesos)
p us_dollars.map(&to_rupees)

puts

is_senior = Proc.new {|age| age > 55}

ages = [10, 60, 83, 30, 43, 25]

p ages.select(&is_senior)
p ages.reject(&is_senior)
