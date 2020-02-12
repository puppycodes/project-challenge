json.extract! dog, :id, :name, :description, :images, :created_at, :updated_at, :user_id
json.images dog.images.map { |image| url_for(image) }
json.url dog_url(dog, format: :json)
