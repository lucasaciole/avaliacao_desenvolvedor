json.extract! transaction, :id, :value, :description, :quantity, :buyer, :venue, :address, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
