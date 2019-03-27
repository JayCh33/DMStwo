json.extract! purchase_order, :id, :supplier_id, :products_list, :eta, :completed, :created_at, :updated_at
json.url purchase_order_url(purchase_order, format: :json)
