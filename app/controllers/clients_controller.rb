class ClientsController < InheritedResources::Base
  before_action :authenticate_admin_user!

  private

    def client_params
      params.require(:client).permit(:name, :country, :city, :address,
                                     :postal_code, :email, :phone, :details,
                                     :vehicle_registration_plate, :vehicle_brand,
                                     :vehicle_model, :vehicle_model_details,
                                     :vehicle_life_cycle)
    end

end
