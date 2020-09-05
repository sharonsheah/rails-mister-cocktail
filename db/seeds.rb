require 'json'
require 'open-uri'

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "watermelon")

puts "Creating ingredients from API..."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialised = open(url).read
ingredients = JSON.parse(ingredients_serialised)
ingredients_arr = ingredients.first[1]
ingredients_arr.each { |ingredient| Ingredient.create(name: ingredient["strIngredient1"]) }

puts "Created #{Ingredient.count} ingredients"
