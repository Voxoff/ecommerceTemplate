class Order < ApplicationRecord
  belongs_to :user
  validates :product_sku, presence: true
  monetize :amount_cents
end
