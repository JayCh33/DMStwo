class CreatePurchaseOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_orders do |t|
      t.references :supplier, foreign_key: true
      t.text :products_list
      t.date :eta
      t.boolean :completed

      t.timestamps
    end
  end
end
