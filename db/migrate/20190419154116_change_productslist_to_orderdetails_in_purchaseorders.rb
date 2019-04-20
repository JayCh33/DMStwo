class ChangeProductslistToOrderdetailsInPurchaseorders < ActiveRecord::Migration[5.1]
  def up
    rename_column :purchase_orders, :products_list, :order_details
  end

  def down
  end
end
