ActiveAdmin.register Supplier do
  menu priority: 7

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
    selectable_column
    column :name
    column :country
    column :email
    actions
  end

  sidebar 'Supplier Registration Details', :only => :show do
    table_for supplier do
      column :created_at do
        supplier.created_at
      end
    end
    table_for supplier do
      column :updated_at do
        supplier.updated_at
      end
    end
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
