class CashRegister
  
  attr_reader :discount, :total, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total=(total)
    @total = total
  end
  
  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @price = price
    quantity.times do
      @total += price
      @items << title
    end
    
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @total*(@discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    
    @quantity.times do @items.pop end
    
    @total -= @price*@quantity
    
  end
  
end