class SuppliersController < InheritedResources::Base
  before_action :authenticate_admin_user!


  private

    def supplier_params
      params.require(:supplier).permit(:name, :country, :city, :address,
                                       :postal_code, :email, :phone, :company,
                                       :company_details, :bank_details)
    end

end
