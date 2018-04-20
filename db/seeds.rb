Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.ingredient, cost: Faker::Number.between(1,25), origin:Faker::Address.country)
end

250.times do |index|
  Review.create!(product_id: Faker::Number.between(1,50), author: Faker::WorldOfWarcraft.hero, content_body: Faker::Lorem.characters(51..249), rating: Faker::Number.between(1,5))
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
