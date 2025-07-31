class AddForeignKeys < ActiveRecord::Migration[8.0]
  def change
    change_column_null(:artworks, :user_id, false)
    change_column_null(:artist_profiles, :user_id, false)
    change_column_null(:artist_portfolios, :user_id, false)
    add_foreign_key :artworks, :users
    add_foreign_key :artist_profiles, :users
    add_foreign_key :artist_portfolios, :users
  end
end
