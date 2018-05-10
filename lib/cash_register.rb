require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      self.items << title
    end
    self.last_item_price = self.total
  end

  def apply_discount
    
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
