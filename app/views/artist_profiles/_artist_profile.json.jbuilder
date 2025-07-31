json.extract! artist_profile, :id, :name, :description, :artist_id, :photo_id, :created_at, :updated_at
json.url artist_profile_url(artist_profile, format: :json)
