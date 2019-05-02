class Customer < ApplicationRecord
  has_many :service_appointments, dependent: :destroy
  has_many :vehicles
  accepts_nested_attributes_for :vehicles
end
