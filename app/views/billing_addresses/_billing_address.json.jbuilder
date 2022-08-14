json.extract! billing_address, :id, :name, :email_address, :phone_number, :address, :city, :state, :zip, :created_at, :updated_at
json.url api_v1_billing_addresses_index_url(billing_address, format: :json)
