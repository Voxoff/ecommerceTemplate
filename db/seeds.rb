puts 'Cleaning database...'
Product.destroy_all

puts 'Creating products...'

Product.create!(price: 1, sku: 'jean-mimi', name: 'Jean-Michel - Le Wagon', photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Product.create!(price: 1, sku: 'octocat',   name: 'Octocat -  GitHub',      photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
puts 'Finished!'
