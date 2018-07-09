class CashRegister
  attr_accessor :total, :discount, :subtotal, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @items << item
    self.subtotal = price * quantity
    self.total = total + subtotal
  end

  def apply_discount
    if discount.zero?
      "There is no discount to apply."
    else
      self.total -= (total * (discount.to_f/100))
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

end
