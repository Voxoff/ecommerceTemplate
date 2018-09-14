puts 'Cleaning database...'
Product.destroy_all

puts 'Creating products...'

Product.create!(price: 1, sku: 'jean-mimi', name: 'Jean-Michel - Le ', remote_photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Product.create!(price: 3, sku: 'octocat',   name: 'Octocat -  GitHub',      remote_photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
Product.create!(price: 2, sku: 'product-three',   name: 'Product Three -  Facebook',      remote_photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
puts 'Finished!'
