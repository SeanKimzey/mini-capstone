# products = Product.all
# suppliers = Supplier.all
# products.each do |product|
#   product.supplier_id = suppliers.sample.id
#   product.save
# end

# products = Product.all
# products.each do |product|
#   image = Image.new(url: product.image_url, product_id: product.id, description: Faker::Lorem.sentence)
#   image.save
# end

# CartedProduct.create!(
#   user_id: 2,
#   product_id: 1,
#   quantity: 12,
#   status: "carted",
# )

# CartedProduct.create!(
#   user_id: 2,
#   product_id: 3,
#   quantity: 12,
#   status: "removed",
# )

# CartedProduct.create!(
#   user_id: 2,
#   product_id: 3,
#   quantity: 2,
#   status: "purchased",
# )