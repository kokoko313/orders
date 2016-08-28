# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
Product.create! [
  { title: 'Polka', info: 'text1' },
  { title: 'shkaf', info: 'text' },
  { title: 'korobka', info: 'text' },
]
Category.destroy_all
Category.create! [
  { name: 'Polka' },
  { name: 'shkaf' },
]