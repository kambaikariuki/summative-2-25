class ArtistPortfolio < ApplicationRecord
  has_one_attached :image
  belongs_to :artist
  belongs_to :user
  has_many :artworks
end
