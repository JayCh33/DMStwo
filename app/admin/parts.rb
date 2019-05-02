ActiveAdmin.register Part do
  menu priority: 3

  permit_params :part_name, :part_number, :image, :part_description, :part_category,
                :part_purchase_price, :part_customer_price, :quantity

  form do |f|
    f.inputs do
      f.input :image
      f.input :part_category, collection: ['Body components', 'Door components',
                                           'Windows', 'Audio and Video Devices',
                                           'Cameras', 'Electrical supply system',
                                           ' Gauges and meters', 'Lighting and signaling system',
                                           ' Sensors', 'Electrical Switches']
      f.input :part_name
      f.input :part_number
      f.input :part_description,
              :input_html => {'rows' => 5},placeholder: " Part compatibility: | Full part details: "
      f.input :part_purchase_price, label: 'Part purchase price (€)', placeholder: '0'
      f.input :part_customer_price, label: 'Part customer price (€)', placeholder: '0'
      f.input :quantity, placeholder: '0'
    end
    f.actions
  end

  show do
    attributes_table do
      row :image do |ad|
        image_tag ad.image.medium
      end
      row :part_name
      row :part_number
      row :part_category
      row :part_description
      row :quantity
      row :part_purchase_price
      row :part_customer_price
      row :quantity
    end
    active_admin_comments
  end

  index do
    selectable_column
    id_column
    column :image do |ad|
      image_tag ad.image.thumb
    end
    column :part_name
    column :part_category
    column :part_description do |v|
      v.part_description.slice(0,250)
    end
    number_column :part_purchase_price, as: :currency, unit: "€", separator: ","
    number_column :part_customer_price, as: :currency, unit: "€", separator: ","
    column :quantity

    actions
  end

  sidebar 'Part Registration Details', :only => :show do
    table_for part do
      column :created_at do
        part.created_at
      end
    end
    table_for part do
      column :updated_at do
        part.updated_at
      end
    end
  end

  filter :part_name, :as => :select
  filter :part_category, :as => :select
  filter :part_description
  filter :part_purchase_price, as: :numeric_range_filter
  filter :part_customer_price, as: :numeric_range_filter
  filter :quantity, as: :numeric_range_filter
end
