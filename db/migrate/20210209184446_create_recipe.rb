class  CreateRecipe < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|      
      t.string :recipe_name
      t.text :directions
      t.integer :difficulty 
      t.string :cuisine 
      t.string :avatar
      t.references :users, foreign_key: {on_delete: :cascade}
    end 
  end
end
