json.extract! client, :id, :name, :country, :city, :address, :postal_code, :email, :phone, :details, :vehicle_registration_plate, :vehicle_brand, :vehicle_model, :vehicle_model_details, :vehicle_life_cycle, :created_at, :updated_at
json.url client_url(client, format: :json)
