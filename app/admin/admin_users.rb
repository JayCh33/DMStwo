ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :superadmin

  index do
    selectable_column
    id_column
    column :email
    column :superadmin
    column :created_at
    #column :current_sign_in_at
    #column :sign_in_count
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :superadmin
  filter :created_at

  form do |f|
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
