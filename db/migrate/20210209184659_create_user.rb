class  CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|      
      t.string :username
      t.string :email
      t.string :password
      t.text  :about 
      t.string :avatar

    end 
  end
end
