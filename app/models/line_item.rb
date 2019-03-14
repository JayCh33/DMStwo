class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  after_initialize do
    self.quantity ||= 1
  end


  def total_price
    product.price * quantity
  end
end
