class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_make
      t.string :vehicle_category
      t.string :vehicle_model
      t.string :vehicle_condition
      t.date :vehicle_registration_date
      t.string :vehicle_engine
      t.string :vehicle_power
      t.string :vehicle_drive_type
      t.string :vehicle_fuel_type
      t.integer :vehicle_doors
      t.string :vehicle_color
      t.string :vehicle_interior_type
      t.integer :vehicle_airbags
      t.string :vehicle_euroclass
      t.decimal :vehicle_price
      t.text :vehicle_life_cycle

      t.timestamps
    end
  end
end
