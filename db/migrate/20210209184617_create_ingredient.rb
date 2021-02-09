class  CreateIngredient < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|      
      t.string :ingredient_name
      t.string :value
      end 
  end
end
