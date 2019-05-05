ActiveAdmin.register AdminUser do
  menu priority: 8

  permit_params :email, :password, :password_confirmation, :superadmin

  index do
    selectable_column
    if superadmin?
      column :email do |u|
        link_to u.email, admin_admin_user_path(u)
      end
      column :created_at
      toggle_bool_column :superadmin
    else
      column :email
      column :created_at
      column :superadmin
    end
    if superadmin?
      actions
    end
  end

  filter :email, :as => :select
  filter :created_at
  filter :superadmin, :as => :check_boxes

  form do |f|
    if (f.object == current_admin_user) | superadmin?
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      if superadmin?
        f.input :superadmin, as: :radio
      end
    end
    f.actions
  end
  end

  show do
    attributes_table do
      row :email
      row :superadmin
      if superadmin?
        attributes_table :title =>"Admin User Log Details" do
          row :created_at
          row :updated_at
        end
      end
    end

    active_admin_comments
  end

end
