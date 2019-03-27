class PurchaseOrder < ApplicationRecord
  belongs_to :supplier

  validates :supplier_id, :products_list, presence: true


end
