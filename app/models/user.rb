class User < ActiveRecord::Base 
    has_many :recipes
    has_many :comments, through: :recipes 
end