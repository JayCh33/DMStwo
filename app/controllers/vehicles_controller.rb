class VehiclesController < InheritedResources::Base
  before_action :authenticate_admin_user!

  private

    #def vehicle_params
    #  params.require(:vehicle).permit(:vehicle_make, :vehicle_category,
    #                                  :vehicle_model, :vehicle_condition,
    #                                 :vehicle_registration_date, :vehicle_engine,
    #                                  :vehicle_power, :vehicle_drive_type, :vehicle_fuel_type,
    #                                  :vehicle_doors, :vehicle_color, :vehicle_interior_type,
    #                                  :vehicle_airbags, :vehicle_euroclass, :vehicle_price,
    #                                  :vehicle_life_cycle, :image, :vehicle_type,
    #                                  :vehicle_identification_number, :vehicle_registration_plate)
    #end

end
