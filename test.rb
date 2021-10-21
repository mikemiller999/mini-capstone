require 'http'

response = HTTP.get('http://localhost:3000/products')
output = response.parse(:json)
puts output

#puts "enter the name of the product you want to change"
#name = gets.chomnp
#puts "enter the new price of the product you want to change"
#price = gets.chomp.to_f
#HTTP.patch('http://localhost:3000/patch')



#{
#  "id": 5,
#  "name": "Console", 
#  "price": 450.0,
#  "image_url": "",
#  "description": "A ready to play machine that hooks up to a screen."}