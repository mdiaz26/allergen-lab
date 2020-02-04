class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        @recipes = @recipes.sort_by{|recipe| recipe.ingredients.length}.reverse


    end

    def new
        @recipe = Recipe.new
        @users = User.all

        3.times {@recipe.recipe_ingredients.build }
    end

    def create
        byebug
        @recipe = Recipe.create(recipe_params)
        # @recipe = Recipe.create(recipe_params(:title, :user_id))
        # recipe_params(:ingredients)[:ingredients].map do |ingredient|
        #     ingredient.create_recipe(@recipe, ingredient)
        # end
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :user_id)
    end

    def recipe_ingredient_params
        # params.require(:recipe).require(:recipe_ingredients_attributes)permit()
    end
    
end
