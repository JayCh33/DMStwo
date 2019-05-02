class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :address
      t.string :postal_code
      t.string :email
      t.string :phone
      t.text :details

      t.timestamps
    end
  end
end
