json.extract! artwork, :id, :name, :description, :artist_id, :photo_id, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
