class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  validates :name, presence: true, length: { maximum: 100 }
  has_many :photos
end

def self.recently_added
  order('created_at desc')
end

def self.order_by_name
  order(:name)
end
