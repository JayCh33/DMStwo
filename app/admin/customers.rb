ActiveAdmin.register Customer do
  menu priority: 6
  permit_params :name, :country, :city, :address,
                :postal_code, :email, :phone, :details, #vehicle_ids: [],
                vehicles_attributes: [:id, :vehicle_registration_plate,
                                      :vehicle_identification_number]

  form do |f|
    f.inputs do
      f.input :name
      f.input :country, as: :select, collection: country_dropdown
      f.input :city
      f.input :address
      f.input :postal_code
      f.input :email
      f.input :phone
      f.input :details,:input_html => {'rows' => 5}
    end
    f.actions
  end

  index do
    selectable_column
    column :name do |customer|
      link_to customer.name, admin_customer_path(customer)
    end
    column :country
    column :city
    column :email
    actions
  end

  show do
    attributes_table do
      row :name
      row :country
      row :city
      row :address
      row :postal_code
      row :email
      row :phone
      row :details
    end
    panel "Customer's Vehicle Details" do
      attributes_table_for customer.vehicles do
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
        row :vehicle_condition
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
    active_admin_comments
  end

  sidebar 'Customer Registration Details', :only => :show do
    table_for customer do
      column :created_at do
        customer.created_at
      end
    end
    table_for customer do
      column :updated_at do
        customer.updated_at
      end
    end
  end

  filter :name, :as => :select
  filter :country, :as => :select
  filter :city, :as => :select
  filter :address, :as => :select
  filter :postal_code, :as => :select
  filter :email, :as => :select
  filter :phone, :as => :select

end
