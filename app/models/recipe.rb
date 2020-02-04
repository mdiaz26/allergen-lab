class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :delete_all
  has_many :ingredients, through: :recipe_ingredients
end
