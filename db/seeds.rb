Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.ingredient, cost: Faker::Number.between(1,25), origin:Faker::Address.country)
end

p "Created #{Product.count} products"
