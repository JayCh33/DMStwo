json.extract! supplier, :id, :name, :country, :city, :address, :postal_code, :email, :phone, :company, :company_details, :bank_details, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
