json.extract! part, :id, :part_name, :part_number, :image, :part_category, :part_description, :part_purchase_price, :part_customer_price, :quantity, :created_at, :updated_at
json.url part_url(part, format: :json)
