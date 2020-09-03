puts "Creating ingredients..."
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "watermelon")

puts "Created #{Ingredient.count} ingredients"

# require 'json'
# require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients_serialised = open(url).read
# ingredient = JSON.parse(ingredients_serialised)