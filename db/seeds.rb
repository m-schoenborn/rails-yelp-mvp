# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french" }
mc_donalds = { name: "Mcdonalds", address: "56B Shoreditch High St, London E1 6PQ", category: "french" }
burger_king = { name: "Burger King", address: "56C Shoreditch High St, London E1 6PQ", category: "french" }
salad_bar = { name: "Salad Bar", address: "56D Shoreditch High St, London E1 6PQ", category: "french" }

[dishoom, pizza_east, mc_donalds, burger_king, salad_bar].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
