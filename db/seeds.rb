# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'Faker'
require 'BCrypt'

User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
PantryItem.destroy_all
RecipeIngredient.destroy_all
SavedRecipe.destroy_all

def make_users 
    50.times do 
        new_user = User.new(username:Faker::Name.first_name, password_digest: BCrypt::Password.create('password'))
        new_user.save
    end
    puts "Made Users!"
end

def make_ingredients
    100.times do 
        Ingredient.create(name:Faker::Food.ingredient)
    end
    puts "Made Ingredients!"
end

def make_recipes
    30.times do 
        Recipe.create(title:Faker::Food.dish, description:"Tasty?!")
    end
    puts "Made Recipes!"
end

def make_pantry
    50.times do
        PantryItem.create(user_id:rand(1..50), ingredient_id:rand(1..100))
    end
    puts "Created Pantry"
end

def make_saved
    50.times do
        SavedRecipe.create(user_id:rand(1..50), recipe_id:rand(1..30))
    end
    puts "Created Saved Recipes"
end

def make_recipe_ingredients
    100.times do
        RecipeIngredient.create(recipe_id:rand(1..30), ingredient_id:rand(1..100))
    end
    puts "created recipe ingredients"
end


make_users
make_ingredients
make_recipes
make_recipe_ingredients
make_pantry
make_saved