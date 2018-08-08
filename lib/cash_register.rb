class CashRegister
  attr_accessor :discount, :total
  @@item_array = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    
  end
  
  def add_item(name, price, quantity = 1)
    @total += price * quantity
    @@item_array << name
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else 
      @total *= 0.8
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @@item_array
  end  
end