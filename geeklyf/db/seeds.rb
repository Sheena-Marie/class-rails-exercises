# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = [
  {name: 'One M8', price: 200.0, Brand: 'HTC'},
  {name: 'One M9', price: 300.0, Brand: 'HTC'},
  {name: 'One M10', price: 400.0, Brand: 'HTC'}
]

product.each do |product|
  Product.create(product)
end

user=
