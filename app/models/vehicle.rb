class Vehicle < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :image, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'Image must be GIF, JPG or PNG format'
  }
  validates :vehicle_identification_number,:uniqueness => true
  validates :vehicle_identification_number,:vehicle_make, :vehicle_type,:vehicle_category,
            :vehicle_model, :vehicle_condition, :vehicle_registration_date, :vehicle_engine,
            :vehicle_power, :vehicle_drive_type, :vehicle_fuel_type, :vehicle_doors,
            :vehicle_color, :vehicle_interior_type, :vehicle_airbags,
            :vehicle_euroclass, :presence => true
  validates_uniqueness_of :vehicle_registration_plate, :allow_blank => true
  belongs_to :customer, optional: true

  scope :customer_vehicle, ->{where(vehicle_type: 'Customer vehicle')}
  scope :curtesy_vehicle, ->{where(vehicle_type: 'Curtesy vehicle')}
  scope :demo_vehicle, ->{where(vehicle_type: 'Demo vehicle')}
  scope :inventory_vehicle, ->{where(vehicle_type: 'Inventory vehicle')}
  scope :vehicle_of_interest, ->{where(vehicle_type: 'Vehicle of interest')}

  #'Customer vehicle','Curtesy vehicle', 'Demo vehicle', Inventory vehicle', 'Vehicle of interest'


  #Add this to the model that has_many
  #accepts_nested_attributes_for :customer
end