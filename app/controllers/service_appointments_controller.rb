class ServiceAppointmentsController < InheritedResources::Base
  before_action :authenticate_admin_user!

  private

    def service_appointment_params
      params.require(:service_appointment).permit(:title, :start_time, :end_time, :appointment_details, :client_id)
    end

end
