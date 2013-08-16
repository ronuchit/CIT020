class Inventory_item
  attr_accessor :name
  attr_accessor :price
  attr_accessor :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end
  
  def to_s
    result = sprintf("%s: $%.2f (%d)", @name, @price, @quantity)
    return result  
  end

  # put your three class methods following this line
  def receive(n)
	  if n > 0 then
		  @quantity = @quantity + n
	  end
  end
  
  def sellable?(n)
	  if (n > 0) and (n <= @quantity) then
		  return true
	  else
		  return false
	  end
  end
  
  def sell(n)
	  if (n > 0) and (n <= @quantity) then
		  @quantity = @quantity - n
	  end
  end
end
