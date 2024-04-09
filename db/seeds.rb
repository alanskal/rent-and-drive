# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Car.destroy_all

p "current database destroyed"
Car.create(brand: "Mercedes", model: "amg gt r", year_of_production: 2014, adress: "Paris", price_per_day: 67)
Car.create(brand: "Nissan", model: "370z", year_of_production: 2016, adress: "Lyon", price_per_day: 58, user_id: 2)
Car.create(brand: "BMW", model: "M3", year_of_production: 2015, adress: "Versailles", price_per_day: 70, user_id: 2)

p "new database created"
