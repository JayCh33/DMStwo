class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :address
      t.string :postal_code
      t.string :email
      t.string :phone
      t.string :company
      t.text :company_details
      t.text :bank_details

      t.timestamps
    end
  end
end
