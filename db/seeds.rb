# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: 'sourav.rai@selise.ch', password: 'root123')
User.create!(email: 'sourav1.rai@selise.ch', password: 'root123')
User.create!(email: 'sourav2.rai@selise.ch', password: 'root123')
User.create!(
  email: 'admin@gmail.com',
  password: '123456789',
  admin: true
)

[
  {
    ticker: 'AAPL',
    name: 'Apple.inc',
    last_price: '232'
  },
  {
    ticker: 'GOOG',
    name: 'Google',
    last_price: '199'
  },
  {
    ticker: 'HBO',
    name: 'HBO',
    last_price: '33'
  },
  {
    ticker: 'MSFT',
    name: 'Microsoft',
    last_price: '300'
  },
].each do |attributes|
  Stock.create!(attributes)
end
