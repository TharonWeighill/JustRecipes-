class  CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe do |t|
      t.integer :id
      t.string :recipe_name
      t.text :directions
      t.integer :difficulty 
      t.string :cuisine 
    end 
  end
end
