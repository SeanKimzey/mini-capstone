Rails.application.routes.draw do
  namespace :v1 do
    get '/all-products' => 'products#index'
    get '/all-products/:id' => 'products#show'
    post '/all-products' => 'products#create'
 
  end
end


