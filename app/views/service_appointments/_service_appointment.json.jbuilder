json.extract! service_appointment, :id, :start_time, :end_time, :appointment_details, :customer_id, :completed, :created_at, :updated_at
json.url service_appointment_url(service_appointment, format: :json)
