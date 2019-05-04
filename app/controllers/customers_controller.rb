class CustomersController < InheritedResources::Base
  before_action :authenticate_admin_user!

  private

    #def customer_params
    #  params.require(:customer).permit(:name, :country, :city,
    #                                   :address, :postal_code,
    #                                   :email, :phone, :details)
    #end

end
