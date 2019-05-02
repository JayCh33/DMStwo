class PartsController < InheritedResources::Base
  before_action :authenticate_admin_user!

  private

    def part_params
      params.require(:part).permit(:part_name, :part_number, :image,
                                   :part_category, :part_description,
                                   :part_purchase_price, :part_customer_price,
                                   :quantity)
    end

end
