ActiveAdmin.register Supplier do
  permit_params :name, :country, :city, :address, :postal_code,
                :email, :phone, :company, :company_details,
                :bank_details


  form do |f|
    f.inputs do
      f.input :name
      f.input :country, as: :select, collection: country_dropdown
      f.input :city
      f.input :address
      f.input :postal_code
      f.input :email
      f.input :phone
      f.input :company
      f.input :company_details
      f.input :bank_details
    end
    f.actions
  end

  index do
    id_column
    column :name
    column :country
    column :email
    actions
  end

  filter :name, as: :select
  filter :country, as: :select
  filter :city, as: :select
  filter :address, as: :select
  filter :postal_code, as: :select
  filter :email, as: :select
  filter :phone, as: :select
  filter :company, as: :select
end
