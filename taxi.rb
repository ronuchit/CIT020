# Rohan Chitnis
# CIT 020
# Taxi Fare Calculator Program

# This program calculates taxi fares in San Jose and returns the total amount.

# variables are defined
miles_driven = nil
subtotal = nil
total = nil
FLAG_DROP = 3.5
FARE_PER_MILE = 3.0
TIP = 1.15

# ask user for input
puts "Hello. Welcome to the taxi fare calculator."
print "How many miles have you driven? "
miles_driven = gets.chomp.to_f

# calculate total
subtotal = FLAG_DROP + ( miles_driven.ceil * FARE_PER_MILE )
total = subtotal * TIP

# print output to screen
puts "You drove #{miles_driven} miles. Your total, with 15% gratuity, is $#{total}."