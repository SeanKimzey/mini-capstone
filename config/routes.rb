Rails.application.routes.draw do
  get '/all-products' => 'products#every_product'
  get '/product_1' => 'products#product_one'
  
end
