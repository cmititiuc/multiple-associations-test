# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[ { name: 'Product1', cost: 5 },
  { name: 'Product2', cost: 10 },
  { name: 'Product3', cost: 15 },
  { name: 'Product4', cost: 20 },
].each { |product|
  Product.create(product)
}

[ { name: 'John', account_balance: 13 },
  { name: 'Annie', account_balance: 30 }
].each { |user|
  User.create(user)
}
