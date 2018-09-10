class Product < ApplicationRecord
  add_monetize :products, :price, currency: { present: false } 
end
