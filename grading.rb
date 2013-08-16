def calculate_grade(s,w)
  total = 0.0
  (0...(s.length)).each do |i|
    total += (s[i] * (w[i] / 100))
  end
  return total
end	

scores = [100.0, 90.0, 80.0, 90.0, 75.0]
weights = [30.0, 15.0, 25.0, 10.0, 20.0]

sum = calculate_grade(scores,weights)

puts "The total is #{sum}"

