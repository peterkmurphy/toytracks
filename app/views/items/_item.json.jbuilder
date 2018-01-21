json.extract! item, :id, :name, :description, :photo, :price, :first_advertised_date, :is_advertisied, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
