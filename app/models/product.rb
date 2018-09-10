class Product < ApplicationRecord
  monetize :price_cents
  has_many :reviews
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
  # validates :price, presence: true
end
