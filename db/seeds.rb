# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
Category.destroy_all
Order.destroy_all
Product.create! [
  { title: 'Polka', info: 'text' },
  { title: 'shkaf', info: 'text' },
  { title: 'korobka', info: 'text' }
]
Category.create! [
  { name: 'Polka' },
  { name: 'shkaf' }
]

products=Product.all
categories=Category.all
users=User.all

Order.create! [
  {status:'new', product_id: products.first, category_id: categories.first, user_id: 1 },
  {status:'new', product_id: products.second, category_id: categories.second, user_id: '1' },
  {status:'new', product_id: products.second, category_id: categories.second, user_id: '2' },
  {status:'new', product_id: products.second, category_id: categories.second, user_id: 2 },
]