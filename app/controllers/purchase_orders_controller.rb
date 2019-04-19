class PurchaseOrdersController < InheritedResources::Base
  before_action :authenticate_admin_user!


  private

    def purchase_order_params
      params.require(:purchase_order).permit(:supplier_id, :order_details, :eta, :completed)
    end

end
