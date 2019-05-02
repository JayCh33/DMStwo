class PurchaseOrder < ApplicationRecord
  belongs_to :supplier

  validates :supplier_id, :order_details,:eta, presence: true


  scope :completed, ->{where(completed: true)}
  scope :not_completed, ->{where(completed: false)}

  #many-to-many
  #has_and_belongs_to_many :products, allow_destroy: true, :dependent => :destroy, join_table: :line_products
  #accepts_nested_attributes_for :products, allow_destroy: true
end
