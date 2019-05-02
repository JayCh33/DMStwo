ActiveAdmin.register Supplier do
  menu priority: 7

  permit_params :name, :country, :city, :address, :postal_code,
                :email, :phone, :company, :company_details, :bank_details,
                purchase_orders_attributes: [:id, :order_details, :eta, :completed]


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

  show do
    attributes_table do
     row :name
     row :country
     row :city
     row :address
     row :postal_code
     row :email
     row :phone
     row :company
     row :company_details
     row :bank_details
    panel "Supplier's Purchase Orders Details" do
      attributes_table_for supplier.purchase_orders do
        row :order_details
        row :eta
        row :completed
      end
    end
    end
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
