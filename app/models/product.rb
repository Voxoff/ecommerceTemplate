class Product < ApplicationRecord
  monetize :price_cents
  has_many :reviews
  validates :name, presence: true
  # validates :price, presence: true
end
