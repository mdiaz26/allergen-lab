class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        @recipes = @recipes.sort_by{|recipe| recipe.ingredients.length}.reverse


    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params(:title, :user_id))
        recipe_params(:ingredients)[:ingredients].map do |ingredient|
            ingredient.create_recipe(@recipe, ingredient)
        end
    end

    private

    def recipe_params(*arg)
        params.require(:recipe).permit(arg)
    end
    
end
