class CashRegister
  attr_accessor :discount, :total
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(name, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    @total *= 0.8
    "After the discount, the total comes to $#{@total.to_i}."
  end
  
end