class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    
  end
  
  def add_item(name, price, quantity = 1)
    item_info = {}
    item_info[:name] = name
    item_info[:price] = price
    item_info[:quantity] = quantity
    
    @cart << item_info
    
    @total += price * quantity
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
    item_names = []
    @cart.each do |item_info|
      for item_info in 1..@cart.size
        item_names << @cart[:name]
      end
    end
  end  
end