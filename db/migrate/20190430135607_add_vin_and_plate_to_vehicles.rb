class AddVinAndPlateToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :vehicle_identification_number, :string
    add_column :vehicles, :vehicle_registration_plate, :string
  end
end
