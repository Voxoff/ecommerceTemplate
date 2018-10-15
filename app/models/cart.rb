class Cart < ApplicationRecord
  belongs_to :user, required: false
  has_many :cart_items
end
