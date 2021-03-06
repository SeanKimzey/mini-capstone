Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :v1 do
    get '/products' => 'products#index'
    get '/products/:the_id' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
    post '/users' => 'users#create'
    post '/orders' => 'orders#create'
    post '/carted_products' => 'carted_products#create'
    get '/carted_products' => 'carted_products#index'
    delete '/carted_products' => 'carted_products#destroy'
    
  end 
end


