require 'inventory_item.rb'

test_item = Inventory_item.new("bicycle", 200.00, 20)
# test to see if to_s works correctly
puts "The item is now #{test_item}"

# attempt to receive a valid number of bicycles
test_item.receive(5)
if test_item.quantity == 25 then
  puts "receive(5) works correctly."
else
  puts "receive(5) gives quantity #{test_item.quantity} instead of 25."
end

# attempt to receive an invalid number of bicycles
test_item.receive(-5)
if test_item.quantity == 25 then
  puts "receive(-5) works correctly."
else
  puts "receive(-5) gives quantity #{test_item.quantity} instead of 25."
end

# see if you can sell fewer items than you have
if test_item.sellable?(10) then
  puts "sellable?(10) correctly returns true."
else
  puts "sellable?(10) incorrectly returns false."
end

# see if you can sell more items than you have
if test_item.sellable?(26) then
  puts "sellable?(26) incorrectly returns true."
else
  puts "sellable?(26) correctly returns false."
end

# attempt to sell fewer items than you have
test_item.sell(10)
if test_item.quantity == 15 then
  puts "sell(10) correctly reduces quantity to 15."
else
  puts "sell(10) gives quantity #{test_item.quantity} instead of 15."
end

# attempt to sell an invald number of items
test_item.sell(-20)
if test_item.quantity == 15 then
  puts "sell(-20) correctly leaves quantity unchanged."
else
  puts "sell(-20) gives #{test_item.quantity} instead of 15."
end

# attempt to sell more items than you have
test_item.sell(16)
if test_item.quantity == 15 then
  puts "sell(16) correctly leaves quantity unchanged."
else
  puts "sell(16) gives #{test_item.quantity} instead of 15."
end
