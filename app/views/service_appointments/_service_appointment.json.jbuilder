json.extract! service_appointment, :id, :title, :start_time, :end_time, :appointment_details, :client_id, :created_at, :updated_at
json.url service_appointment_url(service_appointment, format: :json)
