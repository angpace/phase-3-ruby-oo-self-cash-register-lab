class CashRegister 
attr_reader :total, :discount, :items, :last_trans
attr_writer :total, :discount, :items, :last_trans


 def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
 end

 def add_item (title, price, quantity = 1)
   quantity.times do 
   self.items << title
   end
   self.last_trans = price * quantity
    self.total += (price * quantity)
 end

 def apply_discount 
   if (self.discount === 0)
      "There is no discount to apply."
   else 
   percent = self.discount.to_f / 100 
   self.total = self.total - (self.total * percent)
   "After the discount, the total comes to $#{self.total.to_i}."
   end
 end
 
def void_last_transaction 
   self.total -= self.last_trans
   self.last_trans = 0

end

        
end

