class CreateArtworks < ActiveRecord::Migration[8.0]
  def change
    create_table :artworks do |t|
      t.string :name
      t.text :description
      t.bigint :user_id

      t.timestamps
    end
  end
end
