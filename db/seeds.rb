require 'json'
require 'open-uri'

puts "Cleaning database..."

Ingredient.destroy_all
Cocktail.destroy_all

puts "Creating ingredients manually..."

Ingredient.create!(name: "Lemon")
Ingredient.create!(name: "Ice")
Ingredient.create!(name: "Mint leaves")
Ingredient.create!(name: "Watermelon")

puts "Creating ingredients from API..."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialised = open(url).read
ingredients = JSON.parse(ingredients_serialised)
ingredients_arr = ingredients.first[1]
ingredients_arr.each { |ingredient| Ingredient.create(name: ingredient["strIngredient1"]) }

puts "Creating cocktails..."

cocktail_1 = Cocktail.create!(
              name: "Frozen Cucumber Lemonade Cocktail", 
              description: "This drink may be as green as the Hulk, but its contents are as natural and refreshing as they come. Cucumber, mint, and cilantro are the healthy mix-ins you never knew a shot of vodka needed.")
              file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1601811071/cocktail_1_yhhdac.webp")
              cocktail_1.photo.attach(io: file, filename: 'cocktail.jpg', content_type: 'image/jpg')

cocktail_2 = Cocktail.create!(
              name: "Frozen Sangria Slush", 
              description: "When the sun is blazing down upon you with relentless fury, you need to sip on something extra cold to quell the heat. That’s where this fruity, frozen red-wine sangria comes in.")
              file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1601813217/cocktail_2_fdqbcr.webp")
              cocktail_2.photo.attach(io: file, filename: 'cocktail.jpg', content_type: 'image/jpg')

cocktail_3 = Cocktail.create!(
              name: "Pomelo Mojito", 
              description: "Grapefruit-like pomelos are sweet but not bitter, so they pair fabulously with mint and lime juice in this crisp mojito.")
              file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1601813217/cocktail_3_id4h6c.webp")
              cocktail_3.photo.attach(io: file, filename: 'cocktail.jpg', content_type: 'image/jpg')

cocktail_4 = Cocktail.create!(
              name: "Rosé Hibiscus Mimosas", 
              description: "Show company that you know a thing or two about florals with these easy mimosas. The pink color makes them look like they belong at a hotel high tea, but all you have to do is cook sugar, water, and hibiscus leaves in a saucepan and mix the resulting syrup with your bubbly of choice.")
              file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1601813217/cocktail_4_jiweqy.webp")
              cocktail_4.photo.attach(io: file, filename: 'cocktail.jpg', content_type: 'image/jpg')

puts "Created #{Ingredient.count} ingredients, #{Cocktail.count} cocktails"