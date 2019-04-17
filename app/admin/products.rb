ActiveAdmin.register Product do
  permit_params :name, :image, :description, :category, :price, :quantity

  form do |f|
    f.inputs do
      f.input :name, label: 'Product name ', placeholder: "Product name"
      f.input :image
      f.input :description, label: "Product Description ",
              :input_html => {'rows' => 5},placeholder: "Product code: | Product compatibility: | Full part details: "
      f.input :category, collection: ['Body components', 'Door components',
                                      'Windows', 'Audio and Video Devices',
                                      'Cameras', 'Electrical supply system',
                                      ' Gauges and meters', 'Lighting and signaling system',
                                      ' Sensors', 'Electrical Switches'],
              prompt: 'Choose automobile part category',
              label: 'Category '
      f.input :price, label: 'Price (€)',placeholder: '0.00'
      f.input :quantity, placeholder: '0'
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :category
      row :description
      row :quantity
      row :image do |ad|
        image_tag ad.image.medium
      end
    end
    active_admin_comments
  end

  index do
    id_column
    column :image do |ad|
      image_tag ad.image.thumb
    end
    column :name
    column :category
    column :description
    number_column :price, as: :currency, unit: "€", separator: ","
    column :quantity

    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
