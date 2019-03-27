class CreateServiceAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :service_appointments do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.text :appointment_details
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
