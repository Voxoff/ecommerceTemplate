puts 'Cleaning database...'
Review.destroy_all
Order.destroy_all
Product.destroy_all
User.destroy_all
puts 'Creating products...'

p = Product.create!(price: 1, sku: 'jean-mimi', name: 'Jean-Michel', remote_photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Product.create!(price: 3, sku: 'octocat',   name: 'Octocat',      remote_photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
Product.create!(price: 2, sku: 'product-three',   name: 'Facebook',      remote_photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
Product.create!(price: 1, sku: 'jean-mimi', name: 'Jean-Michel', remote_photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Product.create!(price: 3, sku: 'octocat',   name: 'Octocat',      remote_photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
Product.create!(price: 2, sku: 'product-three',   name: 'Facebook',      remote_photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')


user = User.create!(email: "admin@admin.com", password: "123123")
puts 'Creating Reviews...'

Review.create!(product_id: p.id, user_id: user.id, rating: 5)
Review.create!(product_id: p.id, user_id: user.id, rating: 4)
Review.create!(product_id: p.id, user_id: user.id, rating: 4)

puts 'Finished!'
