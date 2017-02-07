json.extract! sale, :id, :buyer, :description, :price, :amount, :address, :provider, :created_at, :updated_at
json.url sale_url(sale, format: :json)