json.extract! transaction, :id, :unit_price, :description, :quantity, :buyer, :provider, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
