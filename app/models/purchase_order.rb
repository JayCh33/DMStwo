class PurchaseOrder < ApplicationRecord
  belongs_to :supplier

  validates :supplier_id, :order_details, presence: true

  #many-to-many
  has_and_belongs_to_many :products, join_table: :line_products
  accepts_nested_attributes_for :products
end
