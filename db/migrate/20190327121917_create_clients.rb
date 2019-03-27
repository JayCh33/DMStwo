class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :address
      t.string :postal_code
      t.string :email
      t.string :phone
      t.text :details
      t.string :vehicle_registration_plate
      t.string :vehicle_brand
      t.string :vehicle_model
      t.text :vehicle_model_details
      t.text :vehicle_life_cycle

      t.timestamps
    end
  end
end
