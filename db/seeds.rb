# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'json'
# require 'open-uri'

# puts 'Cleaning database...'
# Ingredient.destroy_all

# puts 'Creating ingredients...'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredient_serialized = open(url).read
# user = JSON.parse(ingredient_serialized)

# puts "Finished, we have #{Ingredient.count} ingredientss in our list!"

puts 'Cleaning database...'
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

puts 'Creating ingredients...'
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Le tropico")
Cocktail.create(name: "Picolo")
Cocktail.create(name: "Long island")

Dose.create(description: "5cl", ingredient_id: 1, cocktail_id: 1)
Dose.create(description: "2cl", ingredient_id: 2, cocktail_id: 1)
Dose.create(description: "1cl", ingredient_id: 3, cocktail_id: 1)

puts "Finished, we have #{Dose.count} ingredients & #{Cocktail.count} cocktails in our list!"
