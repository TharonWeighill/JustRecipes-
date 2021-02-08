class User < ActiveRecord::Migration[5.2]
  def change
    create_table :user do |t|
      t.string :name
    end 
  end
end
