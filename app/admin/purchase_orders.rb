ActiveAdmin.register PurchaseOrder do
  permit_params :supplier_id, :order_details, :eta, :completed, product_ids: []

  form do |f|
    f.inputs do
      f.input :supplier, label: "Supplier "
      f.input :product_ids, :as => :select , :input_html => {:multiple => true},
              :collection => Product.all, label: "Product selection: "
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
    id_column
    column :supplier
    column :products
    column :order_details
    column :eta
    toggle_bool_column :completed
    actions
  end

  show do
    attributes_table do
      row :supplier
      row :products
      row :order_details
      row :eta
      row :completed
      attributes_table :title =>"Purchase Order Log Details" do
        row :created_at
        row :updated_at
      end
    end
    active_admin_comments
  end

  filter :supplier
  filter :products
  filter :eta
  filter :order_details
  filter :completed, as: :check_boxes

end
