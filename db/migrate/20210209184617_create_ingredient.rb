class  CreateIngredient < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.text :ingredient
      t.text :value
      end 
  end
end
