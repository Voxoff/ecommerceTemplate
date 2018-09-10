class Product < ApplicationRecord
  has_many :reviews
  validates :name, presence: true
  validates :price, presence: true
end
