# products = Product.all
# suppliers = Supplier.all
# products.each do |product|
#   product.supplier_id = suppliers.sample.id
#   product.save
# end

products = Product.all
products.each do |product|
  image = Image.new(url: product.image_url, product_id: product.id, description: Faker::Lorem.sentence)
  image.save
end