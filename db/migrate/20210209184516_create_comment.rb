class  CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text  :textbody
      t.references :recipe, foreign_key: {on_delete: :cascade}
    end 
  end
end
