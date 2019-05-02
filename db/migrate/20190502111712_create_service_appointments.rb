class CreateServiceAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :service_appointments do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.text :appointment_details
      t.belongs_to :customer, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
