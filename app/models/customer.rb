class Customer < ApplicationRecord
  has_many :service_appointments, dependent: :destroy
  has_many :vehicles
  #accepts_nested_attributes_for :vehicles

  validates :name, :country, :city, :address, :postal_code,
            :phone, :email, :presence => true
  validates_uniqueness_of :phone, :email

end
