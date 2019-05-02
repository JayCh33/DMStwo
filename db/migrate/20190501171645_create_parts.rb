class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :part_name
      t.string :part_number
      t.string :image
      t.string :part_category
      t.text :part_description
      t.decimal :part_purchase_price, precision: 8, scale: 2
      t.decimal :part_customer_price, precision: 8, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
