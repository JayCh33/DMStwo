json.extract! customer, :id, :name, :country, :city, :address, :postal_code, :email, :phone, :details, :created_at, :updated_at
json.url customer_url(customer, format: :json)
