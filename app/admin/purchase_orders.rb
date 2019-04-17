ActiveAdmin.register PurchaseOrder do
  permit_params :supplier_id, :products_list, :eta, :completed

  form do |f|
    f.inputs do
      f.input :supplier, label: "Supplier "
      f.input :products_list, label: "Products List ",
              placeholder: " Product code: | Product name: | Product Quantity: (e.g.) 4",
              hint: 'Order template: Product Serial Number| Product Name | Product Quantity in order ',
              :input_html => {'rows' => 5}
      f.input :eta, start_year: Date.today.year, label: "ETA", hint: "Estimated Time of Arrival"
      f.input :completed
    end
    f.actions
  end

  index do
    id_column
    column :supplier
    column :products_list
    column :eta
    toggle_bool_column :completed
    actions
  end




end
