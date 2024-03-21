# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
kbbq = {name: "Kbbq", address: "12 Boundary St, Bradley E2 7JE", category: "japanese"}
pizza_west =  {name: "Pizza Wast", address: "56B Shoreditch High St, London E1 6PQ", category: "belgian"}
freya =  {name: "Freya", address: "120 High St, Melbourne", category: "chinese"}

[dishoom, pizza_east, kbbq, pizza_west, freya].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
