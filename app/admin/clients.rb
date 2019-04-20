ActiveAdmin.register Client do
  permit_params :name, :country, :city, :address,
                :postal_code, :email, :phone, :details,
                :vehicle_registration_plate, :vehicle_brand,
                :vehicle_model, :vehicle_model_details,
                :vehicle_life_cycle

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
      f.input :vehicle_registration_plate
      f.input :vehicle_brand, collection: ['Alfa Romeo', 'Audi', 'BMW','Citroen','Fiat',
                                           'Ford', 'Hyundai', 'Mercedes-Benz', 'Nissan', 'Opel',
                                           'Peygeot', 'Renault', 'Suzuki', 'Toyota' ,'Volkswagen'],
              prompt: 'Select brand'
      f.input :vehicle_model
      f.input :vehicle_model_details,:input_html => {'rows' => 5}
      f.input :vehicle_life_cycle,:input_html => {'rows' => 5}
    end
    f.actions
  end

  index do
    id_column
    column :name
    column :email
    column :vehicle_registration_plate
    column :vehicle_model
    actions
  end

  filter :name, :as => :select
  filter :country, :as => :select
  filter :city, :as => :select
  filter :address, :as => :select
  filter :postal_code, :as => :select
  filter :email, :as => :select
  filter :phone, :as => :select
  filter :vehicle_registration_plate, :as => :select
  filter :vehicle_brand, :as => :select
  filter :vehicle_model, :as => :select

end
