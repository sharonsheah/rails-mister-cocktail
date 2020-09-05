require 'json'
require 'open-uri'

puts "Cleaning database..."

Ingredient.destroy_all

puts "Creating ingredients from API..."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialised = open(url).read
ingredients = JSON.parse(ingredients_serialised)
ingredients_arr = ingredients.first[1]
ingredients_arr.each { |ingredient| Ingredient.create(name: ingredient["strIngredient1"]) }

puts "Created #{Ingredient.count} ingredients from API"
