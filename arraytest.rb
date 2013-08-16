data = []
number = 0

number = gets.chomp.to_i

while number>0 do
data << number
number = gets.chomp.to_i
end

data.each do |item|
	puts item
end
