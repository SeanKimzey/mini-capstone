require 'unirest'

# login

response = Unirest.post("localhost:3000/user_token", parameters:
  {
    auth: {
      email: "sean.kimzey@gmail.com",
      password: "password"
    }
  }
)

p response.body

jwt = response.body["jwt"]

Unirest.default_header("Authorization", "Bearer #{jwt}")

response = Unirest.get("localhost:3000/v1/products")

p response.body



# p "Type in your serch term here."
# search_term = gets.chomp
# response = Unirest.get("localhost:3000/v1/products?search=#{search_term}")
# p response.body 

