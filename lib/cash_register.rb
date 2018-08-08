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
    @discount = 20
  end
  
end