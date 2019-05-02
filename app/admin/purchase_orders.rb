ActiveAdmin.register PurchaseOrder do
  menu priority: 5

  permit_params :supplier_id, :order_details, :eta, :completed

  scope :all
  scope :completed
  scope :not_completed


  form do |f|
    f.inputs do
      f.input :supplier, label: "Supplier "
      f.input :order_details, label: "Order details: ",
              placeholder: " Product name:Quantity, ",
              hint: 'Order template: Product name:Quantity, ',
              :input_html => {'rows' => 5}
      f.input :eta, start_year: Date.today.year, label: "ETA", hint: "Estimated Time of Arrival"
      f.input :completed
    end
    f.actions
  end

  index do
    selectable_column
    column :supplier
    column :order_details
    column :eta
    toggle_bool_column :completed
    actions
  end

  show do
    attributes_table do
      row :supplier
      row :order_details
      row :eta
      row :completed
    end
    active_admin_comments
  end

  sidebar 'Purchase Order Registration Details', :only => :show do
    table_for purchase_order do
      column :created_at do
        purchase_order.created_at
      end
    end
    table_for purchase_order do
      column :updated_at do
        purchase_order.updated_at
      end
    end
  end

  filter :supplier
  filter :eta
  filter :order_details
  filter :completed, as: :check_boxes

end
