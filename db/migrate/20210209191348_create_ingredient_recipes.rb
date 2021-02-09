class CreateIngredientRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_recipes do |t|      
      t.references :recipe
      t.references :ingredient
      t.string :value
    end 
  end
end
