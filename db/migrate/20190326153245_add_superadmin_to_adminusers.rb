class AddSuperadminToAdminusers < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :superadmin, :boolean, default: false
  end
end
