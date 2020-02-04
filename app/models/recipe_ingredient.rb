class RecipeIngredient < ApplicationRecord
    belongs_to :recipe 
    belongs_to :ingredient 

    def create_recipe(recipe, ingredient)
        RecipeIngredient.create(recipe_id: recipe.id, ingredient_id: find_or_create_ingredient(ingredient).id)
    end

    def find_or_create_ingredient(ingredient)
        Ingredient.find_or_create_by(name: ingredient)
    end
end
