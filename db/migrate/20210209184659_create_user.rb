class  CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|      
      t.string :username
      t.text  :about 
    end 
  end
end
