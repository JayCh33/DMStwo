ActiveAdmin.register ServiceAppointment do
  menu priority: 4

  scope :all
  scope :completed
  scope :not_completed

  permit_params :customer_id, :start_time, :end_time,
                :appointment_details, :completed,
                customer_attributes: [:id, :name, :country, :city, :address, :postal_code,
                                      :email, :phone, :details, :vehicle_identification_number, :vehicle_type]

  form do |f|
    f.inputs do
      f.input :customer
      f.input :appointment_details,:input_html => {'rows' => 5}
      f.input :start_time, as: :date_time_picker
      f.input :end_time,   as: :date_time_picker
      f.input :completed
    end
    f.actions
  end

  index do
    selectable_column
    column :customer
    column :appointment_details
    column :start_time
    column :end_time
    toggle_bool_column :completed
    actions
  end

  show do
    attributes_table do
      row :start_time
      row :end_time
      row :appointment_details
      row :completed
      panel "Customer's Details" do
        attributes_table_for service_appointment.customer do
          row :name do |ad|
            link_to ad.name, admin_customer_path(ad)
          end
          row :country
          row :city
          row :address
          row :postal_code
          row :email
          row :phone
          row :details
          panel "Customer's Vehicle Details" do
            attributes_table_for service_appointment.customer.vehicles.where(vehicle_type: 'Customer vehicle') do
              row :image do |ad|
                image_tag ad.image.small
              end
              row :vehicle_type
              row :vehicle_identification_number do |ad|
                link_to ad.vehicle_identification_number, admin_vehicle_path(ad)
              end
              row :vehicle_registration_plate
              row :vehicle_make
              row :vehicle_category
              row :vehicle_model
              row :vehicle_registration_date
              row :vehicle_engine
              row :vehicle_power
              row :vehicle_drive_type
              row :vehicle_fuel_type
              row :vehicle_doors
              row :vehicle_color
              row :vehicle_interior_type
              row :vehicle_airbags
              row :vehicle_euroclass
              row :vehicle_life_cycle
            end
          end
        end
      end
    end
    active_admin_comments
  end

  sidebar 'Appointment Registration Details', :only => :show do
    table_for service_appointment do
      column :created_at do
        service_appointment.created_at
      end
    end
    table_for service_appointment do
      column :updated_at do
        service_appointment.updated_at
      end
    end
  end

  filter :customer
  filter :start_time#, as: :date_time_range
  filter :end_time#, as: :date_time_range
  filter :appointment_details

end
