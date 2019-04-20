class CreateLineProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :line_products do |t|
      t.integer :product_id
      t.integer :purchase_order_id
      t.timestamps
    end
  end
end
