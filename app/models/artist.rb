class Artist < ApplicationRecord
  belongs_to :user
  has_many :artworks
  has_one_attached :image
end
