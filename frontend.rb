require 'unirest'

response = Unirest.get('http://localhost:3000/all-products')

puts JSON.pretty_generate(response.body)