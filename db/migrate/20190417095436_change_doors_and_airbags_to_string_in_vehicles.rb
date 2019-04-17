class ChangeDoorsAndAirbagsToStringInVehicles < ActiveRecord::Migration[5.1]
  def change
    change_column :vehicles, :vehicle_doors, :string
    change_column :vehicles, :vehicle_airbags, :string
  end
end
