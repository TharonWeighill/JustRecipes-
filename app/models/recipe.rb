class Recipe < ActiveRecord::Base
    has_many :comments
    belongs_to :user
    has_many :ingredient_recipes
    has_many :ingredients, through: :ingredient_recipes
end 