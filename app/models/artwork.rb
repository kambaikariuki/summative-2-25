class Artwork < ApplicationRecord
  has_many_attached :images
  belongs_to :artist
  belongs_to :user
end
