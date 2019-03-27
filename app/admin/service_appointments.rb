ActiveAdmin.register ServiceAppointment do
  permit_params :client_id, :title, :start_time, :end_time, :appointment_details

  form do |f|
    f.inputs do
      f.input :title, label: "Service appointment title: "
      f.input :start_time, start_year: Date.today.year, label: "Service starting at: "
      f.input :end_time, start_year: Date.today.year, label: "Service estimated to be fineshed at: "
      f.input :client
      f.input :appointment_details,:input_html => {'rows' => 5}
      #f.input :completed
    end
    f.actions
  end

  index do
    id_column
    column :client
    column :title
    column :start_time
    column :end_time
    actions
  end
end
