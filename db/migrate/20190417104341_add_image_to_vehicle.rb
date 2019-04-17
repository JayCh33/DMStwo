class AddImageToVehicle < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :image, :string
  end
end
