json.extract! customer, :id, :name, :address, :problem, :state_id, :lawyer_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
