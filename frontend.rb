require 'unirest'

# response = Unirest.get('http://localhost:3000/all-products')

# puts JSON.pretty_generate(response.body)

response = Unirest.get('http://localhost:3000/v1/all-products/3', parameters: {
  input_name: "test", 
  input_price: 57686,
  input_description: "cool test!"
  })

p response.body

