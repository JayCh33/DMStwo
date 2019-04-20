class ChangeProductslistToOrderdetailsInPurchaseorders < ActiveRecord::Migration[5.1]
  def up
    change_table :purchase_orders do |t|
      t.rename :products_list, :order_details
    end
  end

  def down
  end
end
