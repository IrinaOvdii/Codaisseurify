class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  validates :name, presence: true, length: { maximum: 100 }
  has_many :photos
end
