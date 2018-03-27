
require 'unirest'

## create user ##

# response = Unirest.post("localhost:3000/v1/users", parameters:
#     {
#       name: "Pepper",
#       email: "Carrick",
#       password: "password",
#       password_confirmation: "password"
   
#     }
#   )

# puts JSON.pretty_generate(response.body)



## login ##

response = Unirest.post("localhost:3000/user_token", parameters:
  {
    auth: {
      email: "joe.shmoe@joe.gov",
      password: "password"
    }
  }
)


p "*" * 50 
p response.body 
p "*" * 50


jwt = response.body["jwt"]

Unirest.default_header("Authorization", "Bearer #{jwt}")


# create order with carted products ##

# response = Unirest.post("localhost:3000/v1/orders")

# puts JSON.pretty_generate(response.body)


## Add items to cart ##


# response = Unirest.post("localhost:3000/v1/carted_products", parameters:
#   {
#     product_id: 1,
#     quantity: 1
#   }
#   )

# p response.body

# show carted products index ##


response = Unirest.get("localhost:3000/v1/carted_products")

puts JSON.pretty_generate(response.body)

# puts "Which item would you like to delete?"

# response = Unirest.delete("localhost:3000/v1/carted_products", parameters:{
# id: gets.chomp
# }
#   )

# p response.body



# show product index ##

# response = Unirest.get("localhost:3000/v1/products")

# puts JSON.pretty_generate(response.body)





## create new product for user that is logged in ##

# response = Unirest.post("localhost:3000/v1/products", parameters:
#   {
#     name: 20,
#     price: 50
#   }

# )

# p response.body

## create new order ##


# response = Unirest.post("localhost:3000/v1/orders", parameters:
#   {
#     product_id: 20,
#     quantity: 50
#   }

# )

# p response.body










# login

# response = Unirest.post("localhost:3000/user_token", parameters:
#   {
#     auth: {
#       email: "sean.kimzey@gmail.com",
#       password: "password"
#     }
#   }
# )

# p response.body

# jwt = response.body["jwt"]

# Unirest.default_header("Authorization", "Bearer #{jwt}")






# p "Type in your serch term here."
# search_term = gets.chomp
# response = Unirest.get("localhost:3000/v1/products?search=#{search_term}")
# p response.body 

