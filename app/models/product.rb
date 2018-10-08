class Product < ApplicationRecord
  self.table_name = "products"
  monetize :price_cents
  has_many :reviews
  validates :name, :price, presence: true
  mount_uploader :photo, PhotoUploader
  # validates :price, presence: true

  extend FriendlyId
  friendly_id :name

  def review_average
    ((reviews.collect(&:rating).reduce(:+) * 100)/ reviews.count).to_f / 100 unless reviews.empty?
  end
end
