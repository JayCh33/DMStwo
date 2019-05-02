class ServiceAppointmentsController < InheritedResources::Base
  before_action :authenticate_admin_user!

  private

    def service_appointment_params
      params.require(:service_appointment).permit(:start_time, :end_time,
                                                  :appointment_details, :customer_id,
                                                  :completed)
    end

end
