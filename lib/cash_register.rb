class CashRegister
  attr_accessor :total, :discount, :subtotal

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.subtotal = price * quantity
    self.total = total + subtotal
  end

  def apply_discount
    if discount.zero?
      "There is no discount to apply."
    else
      
      "After the discount, the total comes to #{total}."
    end
  end

end
