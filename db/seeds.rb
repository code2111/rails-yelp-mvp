# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 fake restaurants...'
Restaurant.destroy_all
10.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: ["0","1","2","3","4","5","6","7","8","9"].sample(10).join
  )
  restaurant.save!
end
puts 'Finished!'
