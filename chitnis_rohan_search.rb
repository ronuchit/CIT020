require "inventory_item.rb"

# arrays and variables
inventory = []
name = ""
price = 0
quantity = 0
choice = ""
price_choice = 0.0
quan_choice = 0
count = 0

# create inventory array based on file "inventory.rb"
if File.exists?("inventory.rb") and File.readable?("inventory.rb") then
	items = open("inventory.rb","r")
else
	puts "Sorry, the file 'inventory.rb' does not exist or is not readable."
end

items.each do |index|
	if (index.chomp != "") then
		(name, price, quantity) = index.split(";")
		inventory << Inventory_item.new(name, price.to_f, quantity.to_i)
	end
end

items.close

while choice.upcase != "E" do
	print "Search by P)rice, Q)uantity, or E)xit: "
	choice = gets.chomp

	if choice.upcase == "P" then
		print "Find items with price greater than: $"
		price_choice = gets.chomp.to_f
		while price_choice < 0 do
			print "Please enter a price greater than or equal to 0: $"
			price_choice = gets.chomp.to_f
		end
		
		puts "Items more than $#{price_choice}:"
		inventory.each do |item|
			if item.price > price_choice then
				puts "#{item.name}: $#{item.price} (#{item.quantity})"
				count = count + 1
			end
		end
		if count == 0 then
			puts "No matching items found."
		else
			puts "Number of items found: #{count}"
		end
		
	elsif choice.upcase == "Q" then
		print "Find items with quantity less than: "
		quan_choice = gets.chomp.to_i
		while quan_choice <= 0 do
			print "Please enter a quantity greater than zero: "
			quan_choice = gets.chomp.to_i
		end
		
		puts "Items with fewer than #{quan_choice} in stock:"
		inventory.each do |item|
			if item.quantity < quan_choice then
				puts "#{item.name}: $#{item.price} (#{item.quantity})"
				count = count + 1
			end
		end
		if count == 0 then
			puts "No matching items found."
		else
			puts "Number of items found: #{count}"
		end
		
	elsif choice.upcase != "E" then
		puts "Sorry, I don't understand #{choice}."
	end
	
	puts
	count = 0
end
