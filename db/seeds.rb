# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Allergy.destroy_all
puts "generating users"
5.times do User.create(user_name: Faker::Name.name)
end
puts "generating ingredients"
10.times do Ingredient.create(ingredient_name: Faker::Food.ingredient)
end
puts "generating recipes"
10.times do Recipe.create(title: Faker::Food.dish, user_id: rand(User.first.id..User.last.id))
end
puts "generating r_is"
10.times do RecipeIngredient.create(recipe_id: rand(Recipe.first.id..Recipe.last.id), ingredient_id: rand(Ingredient.first.id..Ingredient.last.id))
end
puts "generating allergies"
3.times do Allergy.create(user_id: rand(User.first.id..User.last.id), ingredient_id: rand(Ingredient.first.id..Ingredient.last.id))
end
