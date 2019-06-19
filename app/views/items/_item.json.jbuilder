json.extract! item, :id, :name, :is_borrowed, :image, :created_at, :updated_at
json.url item_url(item, format: :json)
