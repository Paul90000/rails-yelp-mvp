# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Updated sample data for restaurants
# db/seeds.rb

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
sushi_zen = { name: "Sushi Zen", address: "123 Sushi St.", phone_number: "555-1234", category: "japanese" }
bella_pasta = { name: "Bella Pasta", address: "456 Pasta Ln.", phone_number: "555-5678", category: "italian" }
le_parisien = { name: "Le Parisien", address: "789 Paris Rd.", phone_number: "555-9876", category: "french" }
beijing_express = { name: "Beijing Express", address: "101 Beijing Blvd.", phone_number: "555-4321", category: "chinese" }
brussels_bites = { name: "Brussels Bites", address: "102 Brussels Ave.", phone_number: "555-8765", category: "belgian" }

[sushi_zen, bella_pasta, le_parisien, beijing_express, brussels_bites].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
