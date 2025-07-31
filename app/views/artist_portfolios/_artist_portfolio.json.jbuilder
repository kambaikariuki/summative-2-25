json.extract! artist_portfolio, :id, :name, :description, :artist_id, :created_at, :updated_at
json.url artist_portfolio_url(artist_portfolio, format: :json)
