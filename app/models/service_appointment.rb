class ServiceAppointment < ApplicationRecord
  belongs_to :customer
  validates :start_time, :appointment_details, :presence => true

  scope :completed, ->{where(completed: true)}
  scope :not_completed, ->{where(completed: false)}
end
