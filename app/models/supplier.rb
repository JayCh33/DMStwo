class Supplier < ApplicationRecord
  has_many :purchase_orders

  validates :name, :country, :city, :address, :postal_code, :company_details, presence: true
  validates :email, :phone, :company, :bank_details, presence: true, uniqueness: true


end
