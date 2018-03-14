require 'unirest'

# response = Unirest.post('http://localhost:3000/v1/all-products/')

# puts JSON.pretty_generate(response.body)

# response = Unirest.delete("http://localhost:3000/v1/products/13")


response = Unirest.post("http://localhost:3000/v1/products/13", parameters: {
    name: "shoe", 
    price: 123,
    image_url: "n/a",
    description: "description"
  }
  )



