class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :delete_all
  has_many :ingredients, through: :recipe_ingredients

  accepts_nested_attributes_for :recipe_ingredients

  def recipe_ingredients_attributes=(ingredient_ids)
    byebug
    # ingredient_ids.values.each do |ingredient_id|
    #   RecipeIngredient.create(recipe_id: self.id, ingredient_id: ingredient_id)
    # end
  end
end
