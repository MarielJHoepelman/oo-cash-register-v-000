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
      value_discount = total * (discount.to_f/100)
      self.total = total - value_discount
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

end
