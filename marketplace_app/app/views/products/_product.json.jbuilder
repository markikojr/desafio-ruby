json.extract! product, :id, :name, :price, :instalment, :image, :url, :created_at, :updated_at
json.url product_url(product, format: :json)
