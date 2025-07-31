class AddArtistId < ActiveRecord::Migration[8.0]
  def change
    add_column :artworks, :artist_id, :bigint, null: false
    add_column :artist_profiles, :artist_id, :bigint, null: false
    add_column :artist_portfolios, :artist_id, :bigint, null: false
    add_column :artists, :bio, :text
    add_foreign_key :artworks, :artists
    add_foreign_key :artist_profiles, :artists
    add_foreign_key :artist_portfolios, :artists
  end
end
