# Rohan Chitnis
# CIT 020
# Price Calculator Program

# This program calculates the total cost of an item given its price, quantity, and discount percentage.

# variables are defined
item_name = nil
price = nil
quantity = nil
discount = nil
subtotal = nil
total = nil

# ask user for input
puts "Welcome to the price calculator."
print "Enter item name: "
item_name = gets.chomp
print "Enter quantity: "
quantity = gets.chomp
print "Enter price: "
price = gets.chomp
print "Enter discount percentage: "
discount = gets.chomp.to_f

# calculate total
subtotal = price.to_f * quantity.to_i
total = subtotal + ( subtotal * ( discount / 100 ) )

# print output to screen
puts "Item: #{item_name}"
puts "Quantity #{quantity} at $#{price} each and #{discount}% discount: total $#{total}"